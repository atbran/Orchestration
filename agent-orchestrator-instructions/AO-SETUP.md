# Set up the pack in current AO

Owner: migration integrator. Complete this in an isolated pilot before registering production work. The instructions below are documentation, not an executed installer.

## 1. Confirm the installed product

Use the official [installation guide](https://aoagents.dev/docs/installation/) and record the installed build. The current CLI reference identifies the desktop distribution; old npm/YAML tutorials are not the baseline for this pack. An installed version's help/schema is authoritative for its accepted arguments.

The following are inspection commands, not commands to run paid agents:

```powershell
ao version
ao status --json
ao project ls
ao agent ls --json
ao spawn --help
ao project set-config --help
```

If `ao` is unavailable, record NOT_RUN and locate the installed app/CLI through its documented installation. Do not install arbitrary similarly named packages. Review readiness-probe behavior before requesting refreshed authentication checks. See [CLI reference](https://aoagents.dev/docs/cli/).

Done: version, platform, agent readiness and help evidence are recorded, with no guessed installed capabilities.

## 2. Stage the repository and instructions

Select the actual application Git repository for implementation work. This Orchestration repository contains instructions only. Confirm the target repository state and prefer a disposable pilot repository first; do not register a directory of unrelated source bundles as one application project.

Stage this folder as `<selected-repository>/agent-orchestrator-instructions/` in an isolated integration checkout. Include it in the chosen reviewed base commit before spawning workers. Verify that an actual worker can read its local copy. Do not rely on a path back into the host's unversioned bundle.

Existing AGENTS.md/CLAUDE.md are generated from project policy. Prepare a coherent migration of the authoritative source and generated copies together. Adapt only execution conventions: AO-owned workspace paths, baseline identity handling and the new rules entry point. Preserve the safety/testing/model rules. Resolve the legacy restriction to workspace paths beneath the bundle before using AO's own workspace location; never have agents silently violate it. Do not edit live policies or legacy baseline records as an incidental setup step.

Done: target base includes the pack and consistent policy. Active legacy runs and original instruction files remain intact.

## 3. Connect AO's supported instruction fields

In project settings, set worker rules to the repository-relative file `agent-orchestrator-instructions/PROJECT-RULES.md`. Set orchestrator standing instructions to the contents of ORCHESTRATOR-RULES.md, or a short explicit pointer that the session verifies it can read. Project `agentRulesFile` must be repository-relative. `orchestratorRules` is inline text, not an invented orchestrator-rules-file setting.

[config/project-config.fragment.json](config/project-config.fragment.json) is a **partial example**, not a complete replacement configuration. It selects the requested primary harnesses/models and points at the staged files. Inspect the full existing project configuration and merge deliberately; `set-config` replaces configuration. Use project settings for effort, reviewer selection and permissions after inspecting what the installed harness exposes. Do not copy example bypass-permission settings from upstream tutorials.

Set the base branch explicitly to the intended reviewed branch. The fragment uses `main` only as the existing Aeriform convention; replace it for a pilot/integration branch. Validate the actual spawned base SHA against the assignment. See [project configuration](https://aoagents.dev/docs/configuration/projects/).

Done: worker and orchestrator each identify the correct pack/version and effective model before implementation. A rules file is not automatically loaded just because it exists on disk.

## 4. Keep the local workflow local

Use local sessions and local evidence initially. Configure an independent review session for plans/code when no authorized PR exists. AO's PR/CI automation is not required to test a local feature and does not authorize uploading private code. Keep opt-in tracker intake off for this pilot.

Current lifecycle handling can send new feedback into agent sessions. It does not expose the old YAML retry-budget settings. Apply this pack's repair policy to those nudges; if the platform cannot enforce a total spending limit, record V05 incomplete and use supervised execution. See [lifecycle automation](https://aoagents.dev/docs/configuration/lifecycle-automation/).

Done: the run cannot accidentally depend on an unpublished PR, unbounded repair loop or an old config key.

## 5. Verify native execution, controls and access

AO's Windows support and Aeriform's build environment are separate concerns. Preserve the pinned Git Bash/MSYS2/MinGW/JUCE build configuration. Run short model-free toolchain checks in the actual AO workspace. Do not substitute WSL for the existing native build without a separately reviewed migration. See [platforms](https://aoagents.dev/docs/platforms/).

Complete [VALIDATION.md](VALIDATION.md) before describing this as unattended. Our original authenticated HTTPS browser/LAN requirement is not automatically fulfilled by AO's desktop UI. Its documented Connect Mobile listener uses HTTP with a password; this pack does not approve relaxing HTTPS. Leave remote access disabled pending a separate acceptable access design. Never expose the primary loopback daemon. See [remote access](https://aoagents.dev/docs/configuration/remote-access/).

Done: the pilot records observed behavior and unsupported requirements, including controls, timeouts and restart behavior for each selected harness/mode.
