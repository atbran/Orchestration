# Feature coordination record

Single writer: [coordinator]. This document is not a lock or scheduler.

- Feature / run identity: [value]
- User request / authorized scope: [reference]
- AO project: [value]
- Repository/base SHA: [values]
- Spec SHA256: [value]
- Pack/model/tool/config identities: [values]
- Actual workspace and native session identities: [values]
- Readiness gaps: [values]

## Stage ledger

| Stage | AO session / native conversation | Input hashes | Output path/hash | State | Calls/budget spent | Evidence |
| --- | --- | --- | --- | --- | --- | --- |
| Readiness | pending | pending | pending | NOT_RUN | 0 | pending |
| Plan | pending | pending | pending | NOT_RUN | 0 | pending |
| Plan review | pending | pending | pending | NOT_RUN | 0 | pending |
| Independent tests | pending | pending | pending | NOT_RUN | 0 | pending |
| Implementation | pending | pending | pending | NOT_RUN | 0 | pending |
| Verification | pending | pending | pending | NOT_RUN | 0 | pending |
| Final Codex review | original task | pending | pending | NOT_RUN | recorded separately | pending |

Add separate rows for revision, re-review, ordinary repair, diagnosis and
assisted repair when they occur. Record why a review was legitimately skipped.
Track all premium follow-up turns, including coordination and automatic
feedback. Possibly submitted calls remain possibly spent until reconciled.

## Ownership ledger

| Assignment | Session/workspace | Exact writable files | Shared dependencies | State | Integration owner |
| --- | --- | --- | --- | --- | --- |
| [ID] | [values] | [list/reference] | [values] | [state] | [owner] |

## Recovery decisions

[Timestamp, observed session/process state, uncertain submissions, reusable
artifact input/output hashes, invalidated stages, action taken and authority.]

## Budget

- Premium calls used / uncertain / remaining: [values]
- Ordinary repair used: [yes/no]
- Premium diagnosis and assisted repair used: [yes/no]
- Active implementation workers / Muse workers: [values]
- Hard enforcement mechanism / gaps: [values]
