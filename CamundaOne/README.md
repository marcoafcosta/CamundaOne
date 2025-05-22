# CamundaOne GPT

This knowledge base empowers Camunda GPT with full support for Camunda 8, and model creation/review/update workflows compatible with Camunda Web & Desktop Modeler.

## Key Features
- **Camunda 8** Quickstart, Architecture, Best Practices
- **BPMN/DMN/CMMN**: Create, Review, Update via GPT prompts
- **Modeler Compatibility**: Examples validated in Desktop Modeler v5.35.0 and Web Modeler
- **Observability**: OTEL, Jaeger, Prometheus configs
- **Quizzes**: Auto-generate and answer model-based quizzes

## Getting Started
1. Run `scripts/unzip-and-clean.sh` to extract source into `src/`.
2. See **docs/modeler-compatibility.md** for import and compatibility guidelines.
3. Launch **Camunda Desktop Modeler** and open `examples/gateway-routing.bpmn` to test.
4. Use `prompts/create-bpmn.md` to generate new `.bpmn` models directly in the Modeler.

For detailed guides, refer to `docs/`.
