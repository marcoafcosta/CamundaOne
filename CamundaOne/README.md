# CamundaOne GPT

[![Build Status](https://github.com/marcoafcosta/CamundaOne/actions/workflows/ci.yml/badge.svg)](https://github.com/marcoafcosta/CamundaOne/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> A comprehensive toolkit for **Camunda 8**, **DMN**, and **FEEL**, powered by GPT-driven prompts and examples.

---

## 📋 Table of Contents
1. [Features](#features)  
2. [Quickstart](#quickstart)  
3. [Usage](#usage)  
4. [Documentation](#documentation)  
5. [Examples](#examples)  
6. [Prompts](#prompts)  
7. [Quizzes](#quizzes)  
8. [Contributing](#contributing)  
9. [License](#license)  

---

## ✨ Features

- **Camunda 8**  
  - Quickstart guide & architectural overview  
  - Best practices: async patterns, incident handling, migration workflows  
- **BPMN / DMN / CMMN**  
  - GPT prompts for creating, reviewing, and updating tasks  
  - Validated examples for Desktop & Web Modeler  
- **FEEL**  
  - In-depth fundamentals documentation (`docs/feel-fundamentals.md`)  
  - DMN literal expressions & decision table examples  
  - GPT prompts for FEEL logic generation & refinement  
  - Interactive quizzes to master FEEL basics  
- **Observability & Monitoring**  
  - OTEL, Jaeger, Prometheus configuration snippets  
- **Automated Quizzes**  
  - Auto-generate and answer quizzes based on your models  

---

## 🚀 Quickstart

### Prerequisites
- **Git**  
- **Camunda Desktop Modeler** v5.35.0+ or **Camunda Web Modeler**  
- **Node.js & Python** (for example scripts)

### Installation

```bash
# Clone the repository
git clone https://github.com/marcoafcosta/CamundaOne.git
cd CamundaOne

# Extract and clean up source files
scripts/unzip-and-clean.sh
```

---

## 🛠️ Usage

1. **Open in Modeler**  
   - **BPMN**: `examples/gateway-routing.bpmn`  
   - **DMN + FEEL**: `examples/feel-example.dmn`  
2. **Generate New Artifacts**  
   - **BPMN**: follow `prompts/create-bpmn.md`  
   - **FEEL**: follow `prompts/create-feel.md`  
3. **Review & Update**  
   - Use **Review** prompts: `prompts/review-*.md`  
   - Use **Update** prompts: `prompts/update-*.md`  

---

## 📖 Documentation

Detailed guides in the `docs/` folder:

- **Camunda 8**  
  - `docs/camunda-8-quickstart.md`  
  - `docs/camunda-8-architecture.md`  
- **Modeling**  
  - `docs/best-practices-camunda-8.md`  
  - `docs/integration-patterns.md`  
  - `docs/migration-v7-to-v8.md`  
- **FEEL**  
  - `docs/feel-fundamentals.md`  
- **Advanced Topics**  
  - `docs/observability-otel.md`  
  - `docs/async-and-incident-handling.md`  

---

## 📑 Examples

Explore working examples in the `examples/` directory:

| File                               | Description        |
|------------------------------------|--------------------|
| `gateway-routing.bpmn`             | Sample BPMN workflow |
| `example-decision.dmn`             | DMN decision table   |
| `feel-example.dmn`                 | DMN + FEEL example   |
| `external-task-worker.js`          | JavaScript worker    |
| `operate-rest-query.py`            | Python REST client   |

---

## 💬 Prompts

Leverage GPT-driven prompts in the `prompts/` folder:

- **BPMN**: `prompts/create-bpmn.md`, `prompts/review-bpmn-c8.md`, `prompts/update-bpmn.md`  
- **DMN**:  `prompts/create-dmn.md`,  `prompts/review-dmn-c8.md`,  `prompts/update-dmn.md`  
- **FEEL**: `prompts/create-feel.md`, `prompts/review-feel.md`, `prompts/update-feel.md`  

---

## 🎓 Quizzes

Reinforce your skills with JSON quizzes in `quizzes/`:

- `quizzes/camunda8-basics.json`  
- `quizzes/advanced-zeebe.json`  
- `quizzes/feel-basics.json`  

---

## 🤝 Contributing

Contributions are welcome!  
Please read `CONTRIBUTING.md` for guidelines, open an issue, or submit a pull request.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
