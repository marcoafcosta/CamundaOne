# Sample Exam Q&A: Camunda Certified Developer
## Q: What is a Service Task in BPMN and how is it implemented in Camunda 7?
A: A Service Task represents work done by an automated system. In Camunda 7, this is implemented using a Java class (JavaDelegate), a REST connector, or an external task.
## Q: What is the difference between a Boundary Error Event and an End Error Event?
A: Boundary Error Events catch errors from a subprocess or task and allow alternative flow. End Error Events end the process path with an error that can be caught by a boundary event.
