# Implementation worker — GLM or assigned Muse

Read [PROJECT-RULES](../PROJECT-RULES.md), then the complete assignment and approved plan. Load other pack references only when their branch of work applies. Progress uses [PROGRESS](../templates/PROGRESS.md); repair follows [WORKFLOW](../WORKFLOW.md); delivery uses [WORKER-HANDOFF](../templates/WORKER-HANDOFF.md).

1. Verify session workspace, base SHA, specification hash, allowed files, effective model and required outputs. Report a mismatch before editing.
2. State the intended slice and the smallest meaningful verification. Make coherent changes inside scope. Send public progress using templates/PROGRESS.
3. Run the assigned checks through real integration paths. Inspect actual test counts and evidence. Classify failure; follow the bounded repair process in WORKFLOW rather than repeatedly trying until something passes.
4. Keep evidence in the assigned directory and preserve pre-existing output. Capture redacted failure details, not entire private transcripts.
5. Before handoff, inspect all changed/untracked files against scope. Commit if assigned, then report the full candidate SHA and any uncommitted state. Describe behavior, tests and remaining limitations.

Muse is limited to explicitly assigned isolated low-risk slices. Authentication, process supervision, serialization, DSP/state and shared infrastructure remain outside a routine Muse assignment. A need for another model or another file is an escalation to the coordinator.

On pause, finish/persist the current safe step and report the boundary reached. On cancellation or uncertain process state, preserve work and report the observed state; cleanup authority belongs to the verified platform/owner. Never claim task termination proves provider-side billing ended.

Done: return templates/WORKER-HANDOFF with READY_FOR_INTEGRATION, BLOCKED or OPERATIONAL_FAILURE. Passing your own tests is supporting evidence, not final project approval.
