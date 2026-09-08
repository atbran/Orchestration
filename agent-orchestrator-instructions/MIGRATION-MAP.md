# What carries forward and what AO replaces

The old dashboard design pack is retained separately. This new pack is
the AO workflow guide; old implementation chapters are historical design
material unless a new assignment explicitly selects a requirement from them.

| Original material | Treatment in this pack |
| --- | --- |
| 01 product requirements | Preserve observable outcomes; map platform gaps below |
| 02 coordinator runbook | WORKFLOW, ORCHESTRATOR-RULES and exact assignments replace dashboard-specific waves |
| 03 schemas/API/persistence | Retire as implementation instructions; use the installed AO interfaces |
| 04 custom dispatcher/supervision | Retain safety/recovery acceptance, do not recreate its implementation |
| 05 FastAPI service | Retire; no new service assignment |
| 06 LAN/security | Preserve privacy and access goals; remote compatibility remains unresolved |
| 07 React UI | Retain readable progress/history/controls; use AO's interface where supported |
| 08 tests/evidence | Carry forward adversarial tests, real integration proof and honest missing results |
| 09 installer | Replace with AO-SETUP and repository rules staging |
| 10 GitHub preparation | Preserve privacy/explicit publication boundary; publishing a custom runner is future scope |
| 11 final review | Original Codex task retains acceptance authority |
| 12 role prompts | Replace with this pack's role files and short prompts |
| Original templates | Adapt assignments, evidence, progress and final handoff |
| ISSUES-LOG and Codex rejection | Failure examples and regression priorities, never commands to execute |

## Original product requirements retained visibly

| ID | AO migration treatment | Pilot checks |
| --- | --- | --- |
| P01 committed spec launch | Bind task to committed spec/base; verify one assigned execution | V01 V03 V09 |
| P02 live overview | Native session view; verify real progress/model/state visibility | V02 V06 |
| P03 public summaries | Role instructions and readable messages; no assumed JSON parser | V06 |
| P04 honest liveness | Distinguish observed host/session activity from agent summaries; automatic 5s/2s/overdue behavior unverified | V06 V08 |
| P05 pause after step | Cooperative role behavior; native interruption is different, support to be proven | V07 |
| P06 live resume | Verify actual selected harness semantics | V07 V08 |
| P07 immediate owned cancellation | Test native stop and descendants; no policy-only guarantee | V07 |
| P08 independent lifetime | Harness/mode-specific validation; no universal continuity claim | V08 V09 |
| P09 history/explanation | Preserved plans, reviews, evidence and public handoffs | V11 |
| P10 authenticated HTTPS LAN | Not satisfied by AO's documented HTTP mobile listener; leave remote access pending | V13 |
| P11 execution bounds | Preserve 30m premium/20m worker/test and budgets; actual enforcement pending | V05 |
| P12 project policy | Preserve scope, model, test/gate and publication controls | V02 V04 V10 V12 |
| P13 installation | Validate staged rules/config and real native build environment | V01 V10 |
| P14 portable/public preparation | Pack portable; original public custom-runner release deferred, not completed by adopting AO | V01 V11 V12 |
| P15 evidence/final review | Original Codex reviews exact platform/config/candidate scope | V14 |

AO's native desktop/mobile experience is not identical to a generic browser
dashboard. Choosing AO does not silently waive HTTPS, hard budgets, safe
process cancellation or required review. Mark gaps explicitly and obtain a
scope decision if an installed capability cannot meet the retained behavior.

The recovery protocol adds cautious reuse of verified completed artifacts;
it does not claim arbitrary in-flight checkpoint restart. A larger automated
durable workflow remains a separate implementation decision.
