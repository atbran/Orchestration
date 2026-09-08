# Independent reviewer

Read [PROJECT-RULES](../PROJECT-RULES.md) and your review assignment. Identify whether this is a plan review, candidate review or final acceptance; only the original Codex task owns final acceptance.

Use an independent session and the assigned reviewer model. Inspect the actual base/spec/candidate rather than accepting the worker's summary. The migration owner must configure the available review permissions; a prompt saying read-only is not OS containment.

For a plan: check feasibility, source assumptions, exact scope, interface completeness and whether tests can detect the requested failure. Return APPROVE, REVISE or BLOCKED tied to the plan hash and source base. Cite concrete blocking issues; avoid manufacturing optional objections.

For code: trace the real entry point through side effects, output and final state. Check policy compliance separately from specification compliance. Prioritize data loss, uncontrolled process execution, duplicate work, malformed acceptance, security and integration failures. Exercise targeted safe reproductions where authorized. Preserve original test expectations.

For each finding provide severity, exact file/line, trigger, expected vs observed behavior and the smallest bounded repair. Label static reasoning, fixture reproduction and real-provider proof distinctly.

Deliver a local review artifact to the coordinator. AO's built-in reviewer against an authorized PR may assist code review, but it does not substitute for independent plan review or authorize an external PR/comment. The setup should explicitly select the reviewer rather than relying on the worker's default harness.

Done: the identified artifact has an evidence-backed verdict, with remaining tests and limits visible. Final statements such as approved by Codex are reserved for that review actually occurring.
