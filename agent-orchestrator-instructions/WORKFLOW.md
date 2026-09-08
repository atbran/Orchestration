# Bounded feature workflow in AO

Owner: coordinator. This is the project process around AO sessions, not a claim that AO enforces the stages automatically. Keep a [run record](templates/RUN-RECORD.md) and preserve it across interruptions.

## A. Establish readiness

Select an existing committed specification and reviewed source base. Record specification content hash, base SHA, instruction-pack hash, relevant tool/config identities and exact writable scope. Confirm the workspace starts from that base and capture pre-existing changes. Run local spec validation, dependency/toolchain discovery and the selected gate's prerequisites before premium work.

Reconcile existing live AO and legacy work before assigning overlapping files. During migration, keep their editing scopes separate. One coordinator owns assignment/integration decisions. A Markdown ledger cannot prevent two independent coordinators from racing; unverified enforcement limits execution to one supervised coordinator.

Done: identities, scope and prerequisites are explicit; expected environment failures are found before an expensive plan.

## B. Plan and review

The planner follows [roles/PLANNER.md](roles/PLANNER.md). Its complete plan identifies measurable behavior, source references, proposed edits, interface dependencies, independent tests and unresolved decisions.

Non-low-risk or sensitive work gets an independent Astra review under [roles/REVIEWER.md](roles/REVIEWER.md). Reviewers see the same base/spec/plan and produce APPROVE, REVISE or BLOCKED with reasons. One Opus revision and one targeted re-review are the maximum. BLOCKED is a legitimate stop. Low-risk review skipping must be recorded with its rationale.

Done: an identified plan is approved under the project's rules. A code reviewer on a later PR is not retroactive approval of a plan.

## C. Independent test preparation

Use [roles/QA.md](roles/QA.md). For blind Aeriform tests, the author receives only the base and specification in a separate baseline-only checkout with no candidate implementation history. A new conversation in a candidate worktree is not blind. Verify that AO's orchestrator context/attachments do not inadvertently include the implementation; otherwise label the review independent but not blind.

Preserve the old structured file-map/expected-test-name deliverable where used. The integration owner validates and installs it into the assigned test scope. Record exact discovered test names and hashes. Registration alone is not execution.

Done: independent expected behavior and test provenance are recorded before candidate inspection.

## D. Scoped implementation

Create a completed [assignment](templates/ASSIGNMENT.md), then launch the selected GLM or explicitly selected Muse session. The worker follows [roles/WORKER.md](roles/WORKER.md). It edits only allowed files, uses public milestone reports and preserves partial work on failure.

Before parallel work, freeze shared interfaces and name their owner. Separate workers may consume those interfaces but cannot independently edit them. Integrate dependent slices serially. The coordinator verifies each commit/diff against declared paths, including renames and untracked files; agent claims of scope compliance are insufficient.

Done: a coherent candidate exists with scoped changes and a complete worker handoff.

## E. Execute trusted gates and bounded repair

Run the existing trusted build, diff validation, independent tests and relevant audio/non-audio gate against the actual candidate. Record actual commands, versions, exit codes, counts and artifact hashes. Verify evidence refers to the candidate tested. Failures in tooling are OPERATIONAL_FAILURE; unmet behavior is a candidate defect; missing prerequisites are NOT_READY.

An ordinary defect gets one cheap scoped repair. If it persists, obtain one premium diagnosis and one worker-assisted repair, within the total premium cap. Sensitive ambiguity goes directly to diagnosis. An unresolved failure, missing scope or spent allowance is BLOCKED. AO's repeated CI/review nudges do not reset this budget.

Done: all required gates pass on the final candidate, or remaining failures are explicitly preserved. A different baseline result must not be compared as though it were the same experiment.

## F. Final acceptance

Collect [templates/FINAL-HANDOFF.md](templates/FINAL-HANDOFF.md). Include candidate/base IDs, instruction/model versions, requirement-to-test mapping, original failures, fixes, skipped checks and retained work. The original Codex task reviews legitimacy; workers/coordinator cannot write its approval.

Use READY_FOR_CODEX_REVIEW only when evidence is complete. Codex can issue ACCEPTED_FOR_IDENTIFIED_SCOPE, CHANGES_REQUIRED, VALIDATION_INCOMPLETE or BLOCKED. Acceptance does not merge code, publish a repository or supply missing listening evidence.

## Interruption and recovery

1. Inspect AO session/native conversation identity, actual process state, workspace diff and last completed artifact before acting. Do not equate a disconnected window with a dead worker.
2. A cooperative pause request asks the agent to finish and persist the current safe step. A native interrupt can stop sooner. Keep the distinction visible. Session kill/restore has its own observed semantics; it is not automatically checkpoint resume.
3. Restore only the identified owned session when authorized and supported. Reconcile whether a prior submission already completed. If unknown, record UNKNOWN rather than starting a duplicate worker or paid call.
4. Reuse completed plan/review/test artifacts only when their relevant base, spec, plan, test inputs and policy/config identities match. Hash the complete contents. Missing/partial output is not reusable approval. Invalidate affected stages after changes; preserve unaffected valid evidence.
5. Verify the recovered workspace and scope before further edits. Agent conversation continuity does not establish that build/test evidence is still current.
6. Retain dirty workspaces. Cleanup is a separate verified operation with an explicit target, after work and evidence are preserved.

This is an evidence-reuse protocol. AO restart behavior varies by harness and mode; the pilot must establish what can actually continue. It is not a custom checkpoint engine or an exactly-once guarantee.
