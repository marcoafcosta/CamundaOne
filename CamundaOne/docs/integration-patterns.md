# Integration Patterns in Camunda 8

## 1. External Task Pattern
### JavaScript Worker
File: `examples/external-task-worker.js`
```js
const { ZBClient } = require('zeebe-node');
const zbc = new ZBClient();

zbc.createWorker(null, 'task-topic', async (job, complete) => {
  console.log('Processing', job.variables);
  complete.success({ result: 'done' });
});
```

## 2. Message Correlation
```java
client.newPublishMessageCommand()
      .messageName("payment-received")
      .correlationKey("invoice-456")
      .send().join();
```
