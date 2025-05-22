CamundaOne GPT

CamundaOne GPT is a comprehensive knowledge base and toolkit for building, reviewing, and updating BPMN, DMN, CMMN, and Camunda Forms models with OpenAI LLM integration. Tailored for Camunda Platform 8 and fully compatible with the latest Camunda Web & Desktop Modeler (v5.35+), it provides:

Guides & ReferenceDetailed Markdown docs covering quickstart, architecture, deployment, scaling, clustering, multi-tenancy, identity/admin, observability, best practices, migration, forms, and more.

Example ProjectsReady-to-run artifacts: Zeebe YAML, BPMN/DMN/CMMN models, JS/Go/Python workers, form definitions, and linked processes.

Prompt TemplatesGPT prompt blueprints for create, review, update workflows across all model types, debug routines, and auto-generated quizzes.

Quizzes & LearningSample JSON quizzes and scripts to build LLM-driven assessments of Camunda knowledge.

Automation ScriptsUtility scripts for unzipping, linting (BPMN, DMN, CMMN, Forms), quiz building, and model validation via Zeebe Modeler CLI.

Prerequisites

Node.js (v14+)

Java 17 & Maven (for Java worker examples)

Docker or Kubernetes (for Camunda 8 runtime)

zbctl CLI (Camunda 8 process client)

@camunda/zeebe-modeler-cli (for offline model validation)

camunda-form-lint (for form JSON validation)

Installation & Setup

Clone the repo



git clone https://github.com/your-org/CamundaOne.git
cd CamundaOne

2. **Extract source archives**
   ```bash
bash scripts/unzip-and-clean.sh

Install CLI tools



npm install -g @camunda/zeebe-modeler-cli camunda-form-lint

4. **Optional**: Build Java worker
   ```bash
cd examples/grpc-worker-go && go mod tidy && go build

Usage

1. Explore Docs

Open any file under docs/ to understand core concepts, patterns, and best practices.

2. Run Examples

Start Zeebe:



docker run --name zeebe -p 26500:26500 -d camunda/zeebe:8.1.0

- Deploy and run BPMN:
  ```bash
zbctl deploy examples/form-linked-process.bpmn
zbctl create instance FormLinkedProcess

Complete user tasks in Tasklist, using tasklist-custom-form.html and form-example.form.

3. Generate & Review Models via GPT

Feed prompt templates from prompts/ into your GPT client to create, review, or update .bpmn, .dmn, .cmmn, and .form files. Example:

Prompt: Create a DMN decision table for loan approval based on credit score.

4. Validate & Lint

# BPMN/DMN/CMMN
zeebe-modeler-cli validate examples/*.bpmn
zeebe-modeler-cli validate examples/*.dmn
zeebe-modeler-cli validate examples/*.cmmn
# Forms
camunda-form-lint examples/*.form

5. Build Quizzes

bash scripts/build-quiz.sh
# Outputs merged JSON in prompts/quiz-master.json

Contributing

Docs: Propose improvements in docs/ for missing topics or deeper examples.

Examples: Add real-world BPMN/DMN/CMMN models or worker implementations.

Prompts: Refine or expand prompt templates to cover new use cases.

Please submit issues and pull requests via GitHub.

License

MIT © Your Organization

