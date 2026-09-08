# Acceptance for AO adoption and subsequent features

The pack is compatible with documented instruction entry points. The installed platform still has to pass this pilot. Current results are in templates/PILOT-EVIDENCE: all begin NOT_RUN. Do not mark a requirement PASS from a README or a unit test of an unused module.

## Platform pilot

| ID | Required observation | Evidence |
| --- | --- | --- |
| V01 | Installed AO version/platform and selected harness versions are recorded; worker and orchestrator can read the staged pack | Version outputs, local pack hash, session acknowledgements |
| V02 | Intended GLM/Opus/Astra and optional Muse routing and effort are actually selected; no silent fallback | Redacted effective settings and authorized pilot result |
| V03 | A full task/plan larger than 50 KB reaches the worker without argv truncation; path with spaces works | Input/output identity through actual supported transport |
| V04 | Distinct worker processes/workspaces preserve scope, integration ordering and configured capacity | Two controlled tasks; no conflicting edits; coordinator record |
| V05 | Premium 1800-second and worker/test 1200-second policies, 6-call cap and repair limits have an identified enforcement mechanism | Settings/code reference plus short equivalent deadline test; no unnecessary 30-minute paid wait |
| V06 | Real public milestones are visible separately from liveness; silence/overdue is not fabricated progress | Authorized session log; identify missing native overdue UI |
| V07 | Cooperative pause, native interrupt and session termination are distinguishable; stop prevents later steps and cleans owned descendants | Actual test-owned process tree and post-stop observation |
| V08 | Close/reopen and daemon restart behavior is established for every selected harness/mode; restore avoids duplicate work | Session/native IDs, process evidence and preserved work |
| V09 | Interrupted planning/review/implementation recovery reuses only valid artifacts; uncertain submissions are reconciled | Injected interruption, input hashes and call ledger |
| V10 | Actual native Windows/Git Bash build and scope/test/gate path works inside AO workspace | Pinned commands, counts, exit codes and artifacts |
| V11 | Plans/reviews/test evidence can be inspected after failure; private prompts/credentials are excluded from shared handoffs | Artifact list and redacted review |
| V12 | No unauthorized push/merge, real-feature launch, notifications or automated new work during setup | Effective setup/intake settings and action record |
| V13 | Original HTTPS/second-device requirement is met by an explicitly accepted access design | Real device/access evidence; AO HTTP mobile mode alone does not pass |
| V14 | Final migration candidate/config/pack identities and outstanding gaps are reviewed by the original Codex task | Signed review result in that task |

V01–V12 must pass before strict unattended-local adoption is claimed. Missing native limits or process guarantees require either a reviewed solution or an explicit user-approved reduction to supervised scope; they cannot be waived by the implementing agent. V13 is required for the original LAN/browser scope. Local-only acceptance must label remote access excluded and pending. V14 is required for final acceptance in the claimed scope.

A provider-independent fake test may verify local control plumbing but not native provider sessions. If AO cannot host the necessary fixtures without modifying its adapters, record the limitation and test an authorized isolated pilot. Do not build an entire new runner just to obtain a green status.

## Aeriform feature gate integration

Preserve the existing trusted gate contract. In the selected installed tool version, inspect `spec-lint.py`, `validate-diff.py`, `validate-gate.py`, `audio-gate-adapter.py` and pinned build instructions. They are reusable validators; the legacy dispatcher is not the new execution path. Check their dependencies before promising they work standalone.

The current audio adapter accepts candidate directory, full base SHA, audio/non_audio kind and a new report directory. It also needs the declared independent-test list; audio work requires its baseline/calibrated inputs. Prepare an assignment-specific exact command and environment from the current source, including `AERIFORM_EXPECTED_TESTS_JSON`, `AERIFORM_BASELINE_DIR` where required and the native toolchain. Values must identify the selected candidate and base, not the last old report directory.

If the gate cannot run outside the old dispatcher, assign a small reviewed adapter change with exact files and model-free contract tests. Do not bypass the gate or relaunch the legacy multi-model pipeline to obtain evidence. Include expected/discovered/executed tests, complete gate output, baseline comparisons and open listening requirements in the handoff.

## Result vocabulary

- PASS: the asserted behavior was actually exercised and observed.
- FAIL: observed behavior violated the requirement; include reproduction.
- NOT_RUN: prerequisite or validation missing; include the dependency.
- UNKNOWN: transient run state requiring reconciliation, not a test pass.

The coordinator reports readiness. Codex issues acceptance for the exact tested scope and identities. Later changes to source, provider versions or relevant settings require corresponding revalidation.
