# Camunda Modeler Compatibility

This guide ensures all BPMN, DMN, and CMMN artifacts are **fully compatible** with the latest Camunda Web Modeler and Camunda Desktop Modeler (version 5.35.0).

## BPMN
- **Spec Version**: BPMN 2.0 (1.2 schema)
- **Definitions Header**:
  ```xml
  <?xml version="1.0" encoding="UTF-8"?>...
  ```
- **Import**: Use File > Open or Upload in Web/Desktop.
- **Validation**: CLI via zeebe-modeler-cli validate.

## DMN
- **Spec Version**: DMN 1.3...
