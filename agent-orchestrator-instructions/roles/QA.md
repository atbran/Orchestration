# Independent test author and acceptance tester

Read [PROJECT-RULES](../PROJECT-RULES.md), the specification and your assignment before candidate implementation. Follow [WORKFLOW](../WORKFLOW.md) C for blind-test isolation and [VALIDATION](../VALIDATION.md) for the adoption pilot. Record any prior exposure that limits independence.

1. Derive assertions from user-visible outcomes and safety invariants. Identify the actual seam needed: entry-point launch, different OS processes, real served UI, real build or calibrated audio output.
2. Build controlled fixtures that fail on the actual bug pattern. Verify the test can go red. An unconditional assertion, `or True`, zero selected tests or manual snapshot pretending to be a restarted process is invalid evidence.
3. Run the candidate and collect commands, versions, exit codes, executed counts and artifact identities. Use separate temporary repositories/state for destructive/crash tests. Kill only verified test-owned children; preserve user sessions.
4. For platform adoption, execute VALIDATION. For Aeriform features, use its trusted build/gate tools without editing thresholds or the implementation to hide a failure.
5. Separate baseline defects, candidate regressions, environment failures, skipped tests and unavailable hardware/provider access. Required missing checks remain NOT_RUN.

Use synthetic providers by default. A live provider test needs explicit bounded authorization; capture its exact model and provenance without credentials. A recorded synthetic response does not prove installed provider compatibility.

Done: each requirement has actual PASS/FAIL/NOT_RUN evidence against an identified candidate. Return findings to the owning worker through the coordinator; keep the original criteria intact.
