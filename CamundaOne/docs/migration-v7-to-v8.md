# Migration from Camunda 7 to 8

## Step 1: Export BPMN
```bash
# In Camunda 7 Modeler
```

## Step 2: Adjust Connectors
- Replace Java Delegates with External Tasks or Worker SDK.

## Step 3: Deploy to Zeebe
```bash
zbctl deploy migrated-process.bpmn
```

> Tool: https://github.com/camunda-community-hub/zeebe-migration-tool
