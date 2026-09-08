# Aeriform instructions for Agent Orchestrator (AO)

**Point the first model to [START-HERE.md](START-HERE.md).** This is the replacement-platform instruction pack. It preserves the useful requirements and quality controls from the original dashboard work without instructing agents to rebuild that dashboard.

Repository folder: `agent-orchestrator-instructions/`.

Status: **DOCUMENTATION_READY; AO_RUNTIME_VALIDATION_PENDING**. These instructions were adapted against current official AO documentation on 2026-09-08. AO was not found on this task's PATH; no AO installation, project settings, model calls or live runs were changed. Documentation compatibility is not a claim that the installed platform passes our acceptance checks.

## Which file goes where

| Reader / destination | File |
| --- | --- |
| First model setting up the migration | [START-HERE.md](START-HERE.md), then [AO-SETUP.md](AO-SETUP.md) |
| AO project worker rules | [PROJECT-RULES.md](PROJECT-RULES.md) |
| AO project orchestrator instructions | [ORCHESTRATOR-RULES.md](ORCHESTRATOR-RULES.md) |
| Planner | [roles/PLANNER.md](roles/PLANNER.md) |
| Independent plan or code reviewer | [roles/REVIEWER.md](roles/REVIEWER.md) |
| GLM / optional Muse implementation worker | [roles/WORKER.md](roles/WORKER.md) |
| Independent test author / acceptance tester | [roles/QA.md](roles/QA.md) |
| Original Codex task receiving final results | [templates/FINAL-HANDOFF.md](templates/FINAL-HANDOFF.md) |

Copyable starting messages live in [prompts](prompts/README.md). They name the appropriate files; the complete task text stays in files, not a large command-line argument.

## Reference, opened only when needed

- [WORKFLOW.md](WORKFLOW.md): stage gates, evidence reuse, safe delegation and failure recovery.
- [MODELS-AND-LIMITS.md](MODELS-AND-LIMITS.md): exact requested models and the difference between a rule and an enforced limit.
- [VALIDATION.md](VALIDATION.md): platform pilot and Aeriform acceptance checks.
- [MIGRATION-MAP.md](MIGRATION-MAP.md): what is retained, replaced or unresolved.
- [SOURCES.md](SOURCES.md): official compatibility references and local provenance.

The original dashboard design pack is retained separately and is not included here. This folder is the execution guide for AO. Historical repair reports and ISSUES-LOG are evidence, not authorization to rerun work, delete branches or spend model calls.

Run [Validate-Pack.ps1](Validate-Pack.ps1) to check local links, entry points, requirement coverage and delivered hashes. This is a static document check; it never starts models or certifies runtime behavior.

This folder is portable as a unit. For recurring AO use, stage a copy under the same folder name inside the selected Git repository and include it in the reviewed base commit. Every AO worktree must receive that version. See AO-SETUP before activation; an absolute external folder is not a valid `agentRulesFile` value.
