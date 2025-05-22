# FEEL Fundamentals

FEEL (Friendly Enough Expression Language) is the expression language defined by the DMN (Decision Model and Notation) standard. It is designed to be both user-friendly and powerful, enabling business users to define decision logic in a natural, spreadsheet-like syntax.

## Overview

- **Purpose**: Write expressions in decision tables, literal expressions, and contexts in DMN models.
- **Integration**: Supported natively in Camunda 8 when modeling decisions with Operate and Optimize.

## Syntax

- **Literals**:
  - Numbers: `123`, `45.67`
  - Strings: `"Hello World"`
  - Booleans: `true`, `false`
  - Dates/Times: `date("2025-05-22")`, `time("13:45:00")`, `date and time("2025-05-22T13:45:00")`
  - Lists: `[1, 2, 3]`, `[]`
  - Null: `null`

- **Operators**:
  - Arithmetic: `+`, `-`, `*`, `/`, `mod`, `abs`
  - Comparison: `=`, `!=`, `<`, `>`, `<=`, `>=`
  - Logical: `and`, `or`, `not`

## Built-in Functions

| Category           | Functions                         |
|--------------------|-----------------------------------|
| String             | `substring`, `upper case`, `lower case`, `string length`, `contains` |
| Date/Time          | `date and time`, `years and months duration`, `years and months duration(from to)`, `day of week` |
| List               | `count`, `min`, `max`, `sum`, `append`, `distinct values` |
| Context            | `get entries`, `get value`, `put value` |

## Examples

1. **Concatenate strings**:

   ```feel
   "Hello, " + customerName
   ```

2. **Check eligibility**:

   ```feel
   age >= 18 and country = "US"
   ```

3. **Date difference**:

   ```feel
   years and months duration(date("2020-01-01"), date("2025-05-22"))
   ```

4. **Filter list**:

   ```feel
   orderList[price > 100]
   ```

## Using FEEL in Camunda

- **Literal Expression**: Insert FEEL code directly in a service or business rule task using the Modeler.
- **Decision Tables**: Use FEEL conditions in input entries and FEEL expressions in output entries.
- **Contexts**: Define a map of key-value pairs using FEEL syntax.

## Further Reading

- DMN 1.3 Specification: FEEL (Section 10)
- Camunda Documentation: [DMN Decision Engine Guide](https://docs.camunda.org/manual/8.0/reference/deployment/decision-engine/)

---
*File: docs/feel-fundamentals.md*