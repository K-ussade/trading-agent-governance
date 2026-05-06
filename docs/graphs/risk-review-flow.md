# Risk Review Flow

## Purpose

This graph shows how public-safe risk register entries move through review without exposing private strategy, account data, or trading claims.

## Mermaid Diagram

```mermaid
flowchart TD
  intake["Risk intake"]:::draft
  classify["Boundary classification"]:::control
  redact["Remove prohibited content"]:::control
  review["Human risk review"]:::authority
  control["Document control"]:::public
  audit["Audit note"]:::control
  privatePath["Private or sealed path"]:::sealed

  intake --> classify
  classify -->|public-safe| redact
  classify -->|private or sealed| privatePath
  redact --> review
  review -->|approved| control
  review -->|needs private handling| privatePath
  control --> audit
  privatePath --> audit

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Boundary classification happens before risk details are public.
- Prohibited content is removed before public documentation.
- Private or sealed risks use a non-public path.

## Boundary Notes

- Strategies, signals, account data, credentials, and performance details cannot be placed in public risk entries.
- Audit notes must stay public-safe.

## Follow-Up Actions

- Keep risk-register templates free of market, account, and performance fields.
- Add new risk categories only when they can be documented without prohibited content.
