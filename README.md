# Orchestration

Reusable instructions for planning, delegating, testing and reviewing AI coding work with [Agent Orchestrator (AO)](https://github.com/Untrivial-ai/agent-orchestrator).

This repository contains an instruction pack, not the AO application or a replacement execution engine. It preserves scoped assignments, independent review, public progress reports, bounded repairs and evidence-based acceptance.

## Start here

- **First model:** read [START-HERE.md](agent-orchestrator-instructions/START-HERE.md).
- **Copyable setup prompt:** [BOOTSTRAP.txt](agent-orchestrator-instructions/prompts/BOOTSTRAP.txt).
- **Pack overview:** [README.md](agent-orchestrator-instructions/README.md).
- **AO configuration:** [AO-SETUP.md](agent-orchestrator-instructions/AO-SETUP.md).

For recurring use on another project, stage the `agent-orchestrator-instructions` folder inside that project's reviewed Git base, then connect the AO rules fields described in the setup guide. This repository is the source of instructions; select your actual application repository for implementation work.

## Included

- Orchestrator, planner, reviewer, worker and independent QA rules.
- Exact model preferences and execution-budget policies.
- Assignment, progress, recovery and final-handoff templates.
- A partial AO project-configuration example.
- A platform compatibility pilot and static pack validator.

The pack originated in an Aeriform workflow. Its audio/build-specific requirements are explicitly identified; adapt those to your project's actual gates before use.

## Validate the documents

From PowerShell at the repository root:

```powershell
./agent-orchestrator-instructions/Validate-Pack.ps1
```

The validator checks document links, entry points, requirement coverage and manifest hashes. It does not start agents, call models or test AO runtime behavior.

## Status

Adapted against AO's documented configuration on 2026-09-08. Static documentation validation passes. Installed AO compatibility, exact model availability, timeout enforcement, cancellation and restart behavior require the included pilot checks. Instructions alone do not enforce those guarantees.

Keep credentials, private transcripts, generated evidence and project source outside this repository unless separately reviewed for publication. This is an independent instruction pack, not an official AO distribution.
