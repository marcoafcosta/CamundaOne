# Operate & Tasklist Integration

Interact with Zeebe via REST:

### Query Instances (Operate API)
File: `examples/operate-rest-query.py`
```python
import requests

url = 'http://localhost:8080/operate/v1/process-instance'
headers = {'Authorization': 'Bearer <token>'}
params = {'processDefinitionKey': 'simple-process'}

resp = requests.get(url, headers=headers, params=params)
print(resp.json())
```

### Complete a Human Task (Tasklist API)
```bash
curl -X POST \
  http://localhost:8080/tasklist/v1/tasks/{taskId}/complete \
  -H "Authorization: Bearer <token>"
```

### Custom Task Form
File: `examples/tasklist-custom-form.html`
```html
<form id="my-form">
  <label>Comment</label>
  <textarea name="comment"></textarea>
  <button type="submit">Submit</button>
</form>
<script>
  // Use Tasklist SDK to submit
</script>
```
