# Camunda 8 Quickstart

Get up and running with Zeebe in minutes.

## 1. Start Zeebe Broker
```bash
docker run --name zeebe -p 26500:26500 -d camunda/zeebe:8.0.0
```

## 2. Define a Simple Workflow
File: `examples/simple-process-zeebe.yaml`
```yaml
id: simple-process
version: 1
resources:
  - simple-process.bpmn
```

## 3. Deploy the Workflow
```bash
zbctl deploy simple-process-zeebe.yaml
```

## 4. Start a Process Instance
```bash
zbctl create instance simple-process
```

## 5. Inspect Instances
```bash
zbctl status instance <instanceKey>
```

> **Official Quickstart:** https://docs.camunda.io/docs/overview/zeebe/quickstart
