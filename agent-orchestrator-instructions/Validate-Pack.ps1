# Static documentation checks only. Does not start AO, agents or providers.
param()
$ErrorActionPreference = 'Stop'
$packRoot = [IO.Path]::GetFullPath($PSScriptRoot)
$problems = [Collections.Generic.List[string]]::new()
$markdownFiles = @(Get-ChildItem -LiteralPath $packRoot -Recurse -File -Filter '*.md')
foreach ($doc in $markdownFiles) {
    $body = Get-Content -LiteralPath $doc.FullName -Raw
    if (([regex]::Matches($body, '(?m)^```').Count % 2) -ne 0) {
        $problems.Add("Unbalanced fences: $($doc.Name)")
    }
    foreach ($match in [regex]::Matches($body, '\]\(([^)]+)\)')) {
        $target = $match.Groups[1].Value
        if ($target -match '^https?://|^#') { continue }
        $target = ($target -split '#', 2)[0]
        $resolved = [IO.Path]::GetFullPath((Join-Path $doc.DirectoryName $target))
        if (-not (Test-Path -LiteralPath $resolved)) {
            $problems.Add("Broken link in $($doc.Name): $target")
        }
    }
}
$configPath = Join-Path $packRoot 'config/project-config.fragment.json'
$config = Get-Content -LiteralPath $configPath -Raw | ConvertFrom-Json
if ($config.agentRulesFile -ne 'agent-orchestrator-instructions/PROJECT-RULES.md') {
    $problems.Add('Unexpected worker rules path')
}
if ($config.worker.agent -ne 'opencode' -or $config.orchestrator.agent -ne 'claude-code') {
    $problems.Add('Unexpected primary harness mapping')
}
$evidence = Get-Content -LiteralPath (Join-Path $packRoot 'templates/PILOT-EVIDENCE.md') -Raw
$validation = Get-Content -LiteralPath (Join-Path $packRoot 'VALIDATION.md') -Raw
$migration = Get-Content -LiteralPath (Join-Path $packRoot 'MIGRATION-MAP.md') -Raw
foreach ($number in 1..14) {
    $id = 'V{0:d2}' -f $number
    foreach ($record in @(@('evidence', $evidence), @('validation', $validation))) {
        if ($record[1] -notmatch "(?m)^\| $id \|") {
            $problems.Add("Missing $id in $($record[0])")
        }
    }
}
foreach ($number in 1..15) {
    $id = 'P{0:d2}' -f $number
    if ($migration -notmatch "(?m)^\| $id ") { $problems.Add("Missing migration mapping $id") }
}
foreach ($required in @('README.md','START-HERE.md','PROJECT-RULES.md','ORCHESTRATOR-RULES.md',
                        'roles/PLANNER.md','roles/WORKER.md','roles/REVIEWER.md','roles/QA.md',
                        'prompts/BOOTSTRAP.txt','templates/FINAL-HANDOFF.md')) {
    if (-not (Test-Path -LiteralPath (Join-Path $packRoot $required))) {
        $problems.Add("Missing entry point: $required")
    }
}
$manifestPath = Join-Path $packRoot 'PACK-MANIFEST.json'
if (Test-Path -LiteralPath $manifestPath) {
    $manifest = Get-Content -LiteralPath $manifestPath -Raw | ConvertFrom-Json
    foreach ($entry in $manifest.files) {
        $entryPath = [IO.Path]::GetFullPath((Join-Path $packRoot $entry.path))
        if (-not $entryPath.StartsWith($packRoot + [IO.Path]::DirectorySeparatorChar,
                                      [StringComparison]::OrdinalIgnoreCase)) {
            $problems.Add("Manifest path outside pack: $($entry.path)")
            continue
        }
        if (-not (Test-Path -LiteralPath $entryPath)) {
            $problems.Add("Missing manifest file: $($entry.path)")
        } elseif ((Get-FileHash -LiteralPath $entryPath -Algorithm SHA256).Hash -ne $entry.sha256) {
            $problems.Add("Changed manifest file: $($entry.path)")
        }
    }
}
if ($problems.Count -gt 0) {
    $problems | ForEach-Object { Write-Output "FAIL: $_" }
    exit 1
}
Write-Output "PASS: $($markdownFiles.Count) Markdown files; relative links/fences; config routing; V01-V14; P01-P15; manifest hashes when present."
Write-Output 'AO runtime/model/control/platform acceptance: NOT_RUN (separate pilot required).'
exit 0
