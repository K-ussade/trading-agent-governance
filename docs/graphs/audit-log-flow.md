# Audit Log Flow

## Purpose

This graph shows how governance decisions become public-safe audit notes without exposing account data or prohibited trading content.

## Mermaid Diagram

```mermaid
flowchart TD
  event["Governance event"]:::draft
  classify["Boundary classification"]:::control
  redact["Public-safe redaction"]:::control
  review["Human review"]:::authority
  publicAudit["Public-safe audit note"]:::public
  privateAudit["Private audit record<br/>not public"]:::private
  blocked["Sealed or prohibited material"]:::sealed

  event --> classify
  classify -->|public-safe| redact
  classify -->|private| privateAudit
  classify -->|sealed or prohibited| blocked
  redact --> review
  review --> publicAudit
  privateAudit --> review
  blocked --> review

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Audit logging starts with boundary classification.
- Private records do not become public logs.
- Public audit notes use sanitized summaries.

## Boundary Notes

- Account data, balances, returns, positions, strategies, signals, credentials, private prompts, private model outputs, and sealed IP are excluded.
- Audit notes are not performance records or compliance certification.

## Follow-Up Actions

- Keep synthetic audit examples free of account and performance fields.
- Add validation checks when new prohibited content categories are identified.
