# Risk Register

## Purpose

This document defines public-safe risk register fields for supervised trading-agent research governance.

## Risk Register Fields

| Field | Description |
| --- | --- |
| Risk ID | Stable public-safe identifier. |
| Risk category | Governance, data, model, operations, access, claim, compliance-review, or publication. |
| Description | Public-safe description without strategies, signals, account data, or sensitive details. |
| Boundary | Public, Private, Sealed, or Mixed. |
| Control | Review gate, access control, disclaimer, logging, or exclusion rule. |
| Owner | Human accountable owner or review role. |
| Review cadence | Planned review interval. |
| Escalation trigger | Condition requiring human escalation. |
| Status | Planned, Active, Mitigated, Paused, Deprecated, or Private / Not public. |

## Risk Categories

| Category | Public-Safe Example |
| --- | --- |
| Claim risk | Public wording could imply financial advice or performance. |
| Access risk | Credentials or account details could be exposed. |
| Data risk | Private logs or account data could leak into documentation. |
| Governance risk | A change could bypass human approval. |
| Publication risk | A public artifact could imply live trading operation. |

## Exclusions

Do not document strategies, signals, returns, balances, account screenshots, account identifiers, broker details, API keys, credentials, private prompts, private model outputs, private operations, or sealed IP in public risk register entries.
