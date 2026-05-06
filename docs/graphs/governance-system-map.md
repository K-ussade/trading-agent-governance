# Governance System Map

## Purpose

This graph shows the public governance documentation components for supervised trading-agent research systems without creating a trading bot or trading system.

## Mermaid Diagram

```mermaid
flowchart LR
  human["Human governance reviewer"]:::authority

  subgraph docs["Public governance docs"]
    standard["Governance standard"]:::public
    risk["Risk register"]:::control
    approval["Human review standard"]:::authority
    audit["Audit log standard"]:::control
    claims["Claim review standard"]:::control
    incidents["Incident response"]:::control
  end

  subgraph examples["Public-safe examples"]
    synthetic["Synthetic examples"]:::synthetic
    templates["Templates"]:::public
  end

  subgraph blocked["Blocked from public repo"]
    bots["Trading bots and execution systems"]:::sealed
    strategy["Strategies, signals, returns, balances"]:::sealed
    accounts["Account data and credentials"]:::sealed
  end

  human --> approval
  standard --> risk
  risk --> approval
  approval --> audit
  claims --> audit
  incidents --> audit
  templates --> risk
  templates --> claims
  synthetic --> audit
  bots -. not included .-> docs
  strategy -. blocked .-> docs
  accounts -. blocked .-> docs

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef synthetic fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- The repository documents governance controls only.
- Human review controls risk acceptance, claim approval, and publication.
- Synthetic examples demonstrate structure without exposing real operations.

## Boundary Notes

- Trading bots, strategies, signals, returns, balances, account data, credentials, private prompts, private model outputs, and sealed IP are blocked.
- The map does not imply a live trading system exists.

## Follow-Up Actions

- Update diagrams if governance artifacts are added.
- Keep prohibited-content checks aligned with README and disclaimer language.
