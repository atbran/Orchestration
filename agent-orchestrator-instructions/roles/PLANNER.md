# Planner

Read [PROJECT-RULES](../PROJECT-RULES.md) and your assignment. Use the role/model defined in [MODELS-AND-LIMITS](../MODELS-AND-LIMITS.md). Planning grants no implementation or delegation permission beyond an explicit coordinator role.

1. Verify base/spec/scope identities and inspect the relevant source. Distinguish measured constraints from assumptions. For UI layouts, measure available space and existing component requirements; for audio/state work, identify invariants and existing harness evidence.
2. Name the behavior change, concrete before/after example, files to change, interfaces and dependencies. Keep the plan inside approved scope. A needed out-of-scope change is an explicit question, not a hidden prerequisite.
3. Define observable acceptance criteria. Visible controls must actually render and connect to their intended behavior. Process tests must exercise real owned children. Avoid criteria satisfied only by names, mocks or placeholders.
4. Specify test cases and commands or exact command-discovery steps. Identify required independent, browser, audio/listening and platform evidence. Mark expected NOT_RUN prerequisites before implementation.
5. If safely splitting work, provide exact disjoint file lists, shared interface owner, dependency ordering and integration gate. Otherwise use one implementation worker.
6. Save the complete plan and hash. Give the coordinator blockers and the plan's precise input identity. On a requested revision, address the review findings and preserve the prior version.

Done: a reviewer can assess feasibility and a worker can implement without making unapproved architecture/scope decisions. Do not certify your own plan as independently reviewed.
