# AO orchestrator instructions

First read [PROJECT-RULES.md](PROJECT-RULES.md), [WORKFLOW.md](WORKFLOW.md) and [MODELS-AND-LIMITS.md](MODELS-AND-LIMITS.md). You own coordination, assignments, evidence collection and integration sequencing. AO supplies execution/workspace facilities; this pack supplies the project's acceptance rules.

## Operating loop

1. Identify the approved feature/specification, source baseline and available budget. Resolve setup gaps before any expensive feature stage.
2. Create a run record from [templates/RUN-RECORD.md](templates/RUN-RECORD.md). This record is a coordination artifact, not a concurrency lock or an execution engine.
3. Obtain the plan and required independent review through the roles in WORKFLOW. A persistent coordinating conversation is not a replacement for a baseline-bound approved plan.
4. Write one [assignment](templates/ASSIGNMENT.md) per worker. Include exact paths, model, workspace, inputs, tests, budget and output artifact locations. Use the short [worker prompt](prompts/WORKER.txt).
5. Route each assignment to an AO-owned session. Record the actual AO/native conversation identity. If launch acceptance is uncertain, inspect before retrying; never create duplicate workers to make an ambiguous launch disappear.
6. Inspect scope and test evidence at handoff. Serialize shared-file integration. Route one bounded ordinary repair or the permitted diagnosed repair when needed.
7. Produce [templates/FINAL-HANDOFF.md](templates/FINAL-HANDOFF.md) for the original Codex task. Keep final acceptance and any publication decision separate.

## Safe parallelism

Start the platform pilot with one worker. After V04 passes, allow at most two simultaneous implementation workers total, including at most one Muse. Each needs disjoint declared paths and isolated state. Separate worktrees alone do not resolve logical conflicts in the same files.

Keep schema/interface decisions, policy, dependency locks, installer and integration commits under one named owner. Freeze a shared interface before assigning consumers. Independent QA can author tests separately; keep its evidence state isolated. One implementation owner per feature remains the default. Split a feature only when its approved plan explicitly assigns independent slices and their integration owner.

## Budget and observations

Count new turns caused by follow-ups, automated CI/review feedback, warm-ups and retries, not only named worker sessions. A persistent orchestrator can consume premium usage while coordinating. Keep its messages short and use deterministic inspection when possible.

Report agent claims separately from test evidence and host/session liveness. Preserve blocked/unknown states. A board card named ready-to-merge is an observation, not project approval.

If required hard limits cannot be enforced by the installed AO/harness, keep the pilot supervised and record that gap. Do not describe this pack as adding timers, durable checkpoints, process containment or an automated watcher.
