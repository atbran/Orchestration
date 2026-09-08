# Role selection and execution limits

These are the user's retained project preferences, extracted from `model-config.sh` on 2026-09-08. The existing CLIs/account entitlements must actually provide them. AO harness names are not model names. This pack does not make a model available or change its billing.

| Role | AO harness to validate | Requested provider model | Effort |
| --- | --- | --- | --- |
| Project planner / coordinating planner | claude-code | claude-opus-5 | high |
| Independent substantial-plan reviewer | codex | gpt-6-astra | high |
| Independent blind-test designer | claude-code | claude-opus-5 | high |
| Routine implementation / repair | opencode | opencode/glm-5.3 | Provider-supported setting; do not invent one |
| Optional isolated low-risk implementation | opencode | opencode/muse-spark-1.3-contributor-free | Provider-supported setting |
| Sensitive diagnosis | codex | gpt-6-astra | high |
| General diagnosis | claude-code | claude-opus-5 | high |
| Final project acceptance | Original Codex task | Existing reviewer context | Existing setting |

Use the configured OpenCode Muse model, not a separately named AO Muse harness merely because the labels resemble each other. Secondary models in the old configuration are explicit alternatives only, never silent fallbacks. If exact model/effort routing is unavailable, report NOT_READY and request a decision.

## Preserved budgets

| Control | Target | Enforcement evidence required |
| --- | --- | --- |
| Premium stage timeout | 30 minutes / 1800 seconds by default | Actual harness/job deadline, no shorter inherited 8-minute cutoff |
| Worker and test invocation timeout | 20 minutes / 1200 seconds | Actual selected execution path |
| Endpoint handshake allowance | 3 minutes; no paid probe by default | Separately authorized probe if needed |
| Premium invocations | At most 6 per feature attempt | Coordinator ledger plus an external/platform limit for unattended use |
| Plan review cycle | Initial review, one revision, one targeted re-review | Stage ledger |
| Repair cycle | One ordinary cheap repair, then at most one premium-assisted worker repair | Stage ledger; sensitive ambiguity may go directly to diagnosis |
| Concurrent implementation | Pilot 1; validated maximum 2 total, maximum 1 Muse | Actual live session inventory and coordinator ownership map |
| Build parallelism | Existing default 2 jobs | Pinned build command |
| Assembled prompt / complete response bounds | 64000 / 40000 characters retained from old runner | Validate deliverable/transport before acceptance; no silent truncation |

Premium counts include coordination and automatic follow-up provider turns where they consume premium access. A persistent AO conversation can make more calls than the old one-shot stages. Document the mapping and effective count; if AO cannot expose/enforce it, mark the budget unverified rather than equating one session to one call. Count retries against the same attempt and record ambiguous submitted calls as possibly spent.

## What this file does not enforce

AO does not automatically consume the old HIGH_TIER_TIMEOUT or MAX_PREMIUM_CALLS shell variables. Exporting them or writing this document is not proof of enforcement. AO's documented REST request timeout is a different control from a model's thinking deadline. Do not change it to 1800 seconds as a substitute. [Configuration reference](https://aoagents.dev/docs/configuration/).

Select a supported native harness/mode and verify its timeout path. If it has no configurable 30-minute stage deadline, document whether execution is unbounded, shorter or otherwise limited and keep the strict unattended profile unaccepted. A separate timeout supervisor would be new implementation work requiring review; these instructions do not install one.

Long task text stays in versioned assignment/input files with a short initial pointer. Verify the actual agent can read the full content. Do not compress an approved plan destructively to satisfy a shell limit or reintroduce the legacy large-argv transport.
