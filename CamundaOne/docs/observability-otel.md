# Observability with OpenTelemetry

## Zeebe OTEL Exporter
Add to `application.yml`:
```yaml
zeebe:
  exporter:
    jaeger:
      endpoint: http://jaeger:14250
```

## Jaeger Dashboard
- Launch Jaeger via Docker and view traces.

## Metrics in Prometheus
Enable Prometheus exporter and scrape metrics on `/actuator/prometheus`.
