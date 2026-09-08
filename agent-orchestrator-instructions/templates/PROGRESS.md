# Public progress format

Post this as a concise AO conversation message at milestones and during long
active work when the harness can emit. Keep the latest copy in the assigned
evidence directory only if that write is in scope.

```text
Assignment: [ID] | Session: [AO ID] | Time: [UTC]
Stage: [planning/review/testing/implementation/verification/repair]
Completed: [observed work since the previous update]
Current: [current action or waiting condition]
Next: [next concrete action]
Blockers: [none, or specific dependency/question]
Evidence: [local artifact/test reference, if any]
Budget: [known remaining allowance; unknown if unavailable]
```

Target interval: 10 minutes during active work, with immediate significant
news when possible. Silence during provider inference is possible. Report
last observed activity honestly; avoid invented percentages, elapsed-based
completion predictions or hidden reasoning.

AO is not assumed to parse the old orch_progress envelope or this Markdown
into custom dashboard fields. These messages are readable public summaries.
Automatic overdue badges or exact custom fields require verified native
support or separately scoped integration, not a promise in a prompt.
