# Modeling Diagrams Reference for Camunda 8

This guide provides **Mermaid** diagrams and examples to aid in creating, reviewing, and updating models.

## 1. BPMN Diagram Patterns
```mermaid
flowchart TD
  %% Simple exclusive gateway example
  Start([Start]) --> Task1["Perform Task 1"]
  Task1 --> Gateway{"Decision?"}
  Gateway -->|Yes| TaskA["Task A"]
  Gateway -->|No| TaskB["Task B"]
  TaskA --> End([End])
  TaskB --> End
```

## 2. DMN Decision Table Illustration
Although Mermaid doesn't natively render tables, represent DMN as Markdown:

| Condition         | Result      |
|-------------------|-------------|
| `input < 100`     | `Low`       |
| `input >= 100`    | `High`      |
| `input == null`   | `Unknown`   |

Use this table when prompting GPT to **generate** or **review** DMN models.

## 3. CMMN Case Model Structure
```mermaid
flowchart TB
  subgraph CaseModel[Customer Onboarding]
    direction TB
    CaseStart([Case Start])
    Stage1["Document Collection"]
    Task1["Receive Documents"]
    Milestone1(["Documents Verified"])
    Stage2["Evaluation"]
    Task2["Evaluate Case"]
    CaseEnd([Case End])
  end
  CaseStart --> Stage1 --> Task1 --> Milestone1 --> Stage2 --> Task2 --> CaseEnd
```
