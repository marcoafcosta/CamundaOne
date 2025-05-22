# Camunda 8 Architecture Overview

Camunda 8 is composed of:

```mermaid
flowchart LR
  A[Zeebe Broker] -->|Events| B(Operate)
  A --> C(Tasklist)
  A --> D(Admin)
  A --> E(Optimize)
  B --> F[Users]
  C --> G[Workers]
```
- **Zeebe Broker:** Core workflow engine, event streaming.
- **Operate:** Visualize instances, incidents.
- **Tasklist:** Manage human tasks.
- **Admin:** Identity, multi-tenancy.
- **Optimize:** Reporting, analytics.

> Diagram source: https://docs.camunda.io/docs/reference/components/architecture
