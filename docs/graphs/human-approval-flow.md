# Human Approval Flow

## Purpose

This graph shows the human approval gates required before governance changes, public claims, or publication.

## Mermaid Diagram

```mermaid
flowchart LR
  change["Governance change request"]:::draft
  risk["Risk review"]:::control
  claim["Claim review"]:::control
  disclaimer["Disclaimer check"]:::control
  approval["Human approval"]:::authority
  publish["Public-safe publication"]:::public
  returned["Returned"]:::draft
  blocked["Blocked or escalated"]:::sealed

  change --> risk
  risk --> claim
  claim --> disclaimer
  disclaimer --> approval
  approval -->|approved| publish
  approval -->|needs changes| returned
  approval -->|unsafe| blocked
  returned --> change

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Governance changes pass through risk, claim, and disclaimer checks.
- Human approval is required before publication.
- Unsafe changes are blocked or escalated.

## Boundary Notes

- Approval does not authorize trade execution or financial advice.
- Public-safe publication cannot include strategies, signals, returns, balances, account data, credentials, or private operations.

## Follow-Up Actions

- Keep human-review templates aligned with this flow.
- Add claim examples only when they are safe and disclaimer-backed.
