# Async Continuations & Incident Handling

## Async Service Tasks
Set `<camunda:asyncBefore>` on service tasks to offload to job executor.

## Incident Example
```xml
<bpmn:serviceTask id="Task_Async" camunda:type="external" camunda:taskDefinitionTopic="async-topic" camunda:asyncBefore="true"/>
```

### Retry & Incident Resolution
- Configure retries: `client.newWorker().lockTime(30000).maxJobsActive(5)`
- Resolve incidents in Operate UI or via API.
