# Provenance and compatibility references

Checked 2026-09-08. Upstream main and documentation can move; record the
installed version and verify its help/settings before applying configuration.
The generated PACK-MANIFEST.json identifies the delivered local pack. It is
an integrity inventory, not an AO runtime acceptance certificate.

## Official AO references

| Source | Used for |
| --- | --- |
| [Introduction](https://aoagents.dev/docs/) | Native project/session model and local execution boundary |
| [Configuration](https://aoagents.dev/docs/configuration/) | Stored project settings and REST/model timeout distinction |
| [Projects](https://aoagents.dev/docs/configuration/projects/) | Actual rules fields, repo-relative path restriction, role model mapping, explicit base branch |
| [CLI](https://aoagents.dev/docs/cli/) | Current inspection commands and installed-help verification |
| [Lifecycle automation](https://aoagents.dev/docs/configuration/lifecycle-automation/) | Feedback delivery versus nonexistent old reactions/retry configuration |
| [Platforms](https://aoagents.dev/docs/platforms/) | Windows native platform boundary |
| [Remote access](https://aoagents.dev/docs/configuration/remote-access/) | Mobile HTTP listener does not meet original HTTPS requirement |
| [Current implementation status](https://github.com/Untrivial-ai/agent-orchestrator/blob/main/docs/STATUS.md) | Harness/mode differences in lifecycle and recovery |

These pages inform the integration instructions, not a claim that all
features are present in the user's installed build. In particular, prompts
cannot supply absent timers, machine isolation, periodic background reports
or durable execution guarantees.

## Local sources adapted

- `AGENT_INSTRUCTIONS.md`: model roles, scope, independent tests, bounded
  repair, audio evidence and final publication limits.
- `model-config.sh`: requested IDs, effort and execution limits at extraction.
- `dashboard-agent-instructions/01-product-and-acceptance.md`: P01–P15.
- `dashboard-agent-instructions/02-coordinator-runbook.md`: safe delegation.
- `dashboard-agent-instructions/08-testing-and-evidence.md`: evidence rigor.
- `dashboard-agent-instructions/10-portability-and-github.md`: export boundary.
- `dashboard-agent-instructions/11-final-review.md`: final review ownership.
- `dashboard-agent-instructions/12-agent-prompts.md`: role routing.
- `ISSUES-LOG.md` and `reports/dashboard-codex-review-20260908/CODEX-REVIEW.md`:
  observed failures and rejected evidence patterns.

The originals were not moved, modified or copied wholesale. No private
transcripts, credentials, source repository history or generated application
code are included in this pack. Bootstrap prompts use repository-relative paths for distribution.
