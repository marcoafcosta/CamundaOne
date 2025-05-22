# Zeebe Gateway & Client Examples

Zeebe communicates via gRPC. Below are client snippets.

### Java Client
```java
// Publish a message
client.newPublishMessageCommand()
      .messageName("order-received")
      .correlationKey("order-123")
      .timeToLive(Duration.ofMinutes(5))
      .send()
      .join();
```

### Node.js Client
```js
const { ZBClient } = require('zeebe-node');
const zbc = new ZBClient();

await zbc.publishMessage({
  name: 'order-received',
  correlationKey: 'order-123',
  timeToLive: 300000,
  variables: { foo: 'bar' }
});
```

### Go Client
File: `examples/grpc-worker-go/main.go`
```go
package main

import (
  "context"
  "time"
  "github.com/zeebe-io/zeebe/clients/go/pkg/zbc"
)
func main() {
  client, _ := zbc.NewClient()
  ctx, cancel := context.WithTimeout(context.Background(), 15*time.Second)
  defer cancel()
  _, err := client.NewPublishMessageCommand().
    MessageName("order-received").
    CorrelationKey("order-123").
    TimeToLive(5 * time.Minute).
    Send(ctx)
  if err != nil {
    panic(err)
  }
}
```

> See full API: https://docs.camunda.io/docs/apis-clients/grpc
