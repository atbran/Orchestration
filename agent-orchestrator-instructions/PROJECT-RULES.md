# Aeriform project rules for AO workers

Read this file for every assignment, then only your assigned role file. These are task instructions, not operating-system enforcement. The coordinator must verify the platform settings and assignment before execution.

## Work identity and scope

- Use the AO session workspace named in your assignment. Record its resolved path, AO session ID, base commit, specification hash and instruction-pack version before edits.
- Edit only the assignment's exact `allowed_files`. Evidence files have a separate explicitly assigned writable directory. Shared interfaces, dependency locks, fixtures, thresholds and generated policy belong to their named owner.
- Preserve unrelated changes. Ask the coordinator for a precise scope extension when required; continue independent authorized work while waiting.
- Use AO's assigned workspace. Do not invoke the legacy `dispatch.sh run` or create a second orchestration tree inside it.
- The coordinator alone delegates. Workers do not spawn other agents, model subprocesses or recursive orchestrators.

## Quality and completion

- Implement the approved plan. A discovered contradiction is a BLOCKED finding with evidence, not permission to widen scope.
- Verify behavior using the real entry point or integration seam. A mock of the entire pipeline proves neither execution nor cleanup.
- Preserve independent tests and acceptance criteria. Report actual discovered/executed counts, exit codes and failing/skipped cases; zero tests and skipped requirements are not PASS.
- Use the current repository's pinned build/gate tools. For Aeriform audio work, preserve the validated AudioRegression harness, calibrated fixtures and thresholds. Carry unresolved v3 findings by ID. Host-parameter connectivity does not prove audibility; required listening evidence stays explicit.
- State changes, serialization, DSP, feedback, voices, latency and process/security changes require independent substantial review.
- Your handoff is `READY_FOR_INTEGRATION`, `BLOCKED` or `OPERATIONAL_FAILURE`. The original Codex task decides final technical acceptance. AO's board or a successful agent turn does not constitute that acceptance.

## Progress and safety

Send public completed/current/next/blockers summaries at meaningful milestones and target at least once every ten minutes during active work when the harness permits output. Follow [templates/PROGRESS.md](templates/PROGRESS.md). A silent provider cannot be forced to emit by prose; never manufacture a summary or expose hidden reasoning. No extra model calls solely for status updates.

Respond to a cooperative pause at the next persisted safe boundary; distinguish this request from an AO/provider interrupt or session termination. Use the platform's verified controls for termination. Do not claim descendants are gone without evidence or manually kill processes by name.

Keep credentials, full prompts, raw private provider streams and private history out of public handoffs, screenshots and exports. Provide concise redacted diagnostics and local evidence paths.

Commits inside the assigned workspace are permitted when the assignment calls for them. Publishing, pushing, creating external PRs, merging, external notifications, global settings changes and destructive cleanup require authorization in the actual user task. A built-in AO nudge is not new authority. Preserve dirty workspaces after failure.

## Limits and recovery

Read [MODELS-AND-LIMITS.md](MODELS-AND-LIMITS.md) for the authoritative role/budget policy. Read [WORKFLOW.md](WORKFLOW.md) when repairing, restoring or escalating. A retry must have a recorded reason and remaining budget. Reuse verified results only for matching inputs; do not repeat premium planning merely because a later tool failed.
