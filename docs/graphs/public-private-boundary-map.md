# Public Private Boundary Map

## Purpose

This graph shows what belongs in the public governance repository and what must remain private, sealed, or blocked.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph public["Public repository"]
    standards["Governance standards"]:::public
    templates["Templates"]:::public
    diagrams["Mermaid diagrams"]:::public
    synthetic["Synthetic examples"]:::synthetic
  end

  subgraph private["Private context"]
    ops["Private operations"]:::private
    prompts["Private prompts and model outputs"]:::private
    audit["Private audit records"]:::private
  end

  subgraph sealed["Blocked or sealed"]
    strategy["Strategies and signals"]:::sealed
    accounts["Account data, balances, credentials"]:::sealed
    returns["Returns and performance claims"]:::sealed
    sealedIP["Sealed YOSO-YAi LLC IP"]:::sealed
  end

  standards --> templates
  templates --> synthetic
  ops -. summarized only if approved .-> standards
  prompts -. excluded .-> public
  audit -. private status only .-> standards
  strategy -. blocked .-> public
  accounts -. blocked .-> public
  returns -. blocked .-> public
  sealedIP -. blocked .-> public

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef synthetic fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Public content is limited to governance documentation and synthetic examples.
- Private audit records and operational details are excluded.
- Strategies, signals, account data, returns, and performance claims are blocked.

## Boundary Notes

- Donor data, student data, volunteer private data, customer data, private Foundation operations, exact sensitive infrastructure locations, private training corpora, secrets, tokens, and security-sensitive NEURONA operational details are excluded.
- This graph does not imply a live trading system exists.

## Follow-Up Actions

- Review every new template and example against this boundary map.
- Keep disclaimer and prohibited-content language synchronized.
