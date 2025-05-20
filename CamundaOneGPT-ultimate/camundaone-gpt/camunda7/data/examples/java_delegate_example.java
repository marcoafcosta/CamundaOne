package org.example;
import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
public class ArchiveInvoiceDelegate implements JavaDelegate {
  @Override
  public void execute(DelegateExecution execution) {
    System.out.println("Archiving invoice for: " + execution.getVariable("invoiceId"));
  }
}
