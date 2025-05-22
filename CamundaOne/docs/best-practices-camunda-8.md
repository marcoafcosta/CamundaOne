# Camunda 8 Best Practices

1. **Modular Processes**: Break complex flows into call activities.
2. **Short Retries**: Use incremental backoff on external tasks.
3. **Variable Management**: Store minimal payload in variables.
4. **Error Handling**: Use BPMN boundary events for retries.
5. **Security**: Pin service account tokens; use OIDC.

> Full guide: https://docs.camunda.io/docs/guides/best-practices
