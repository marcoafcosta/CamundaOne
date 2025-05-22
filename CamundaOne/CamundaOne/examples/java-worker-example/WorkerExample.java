import io.camunda.zeebe.client.ZeebeClient;
import io.camunda.zeebe.client.api.response.Topology;

public class WorkerExample {
  public static void main(String[] args) {
    try (ZeebeClient client = ZeebeClient.newClientBuilder().build()) {
      Topology topology = client.newTopologyRequest().send().join();
      System.out.println("Connected to: " + topology);
    }
  }
}
