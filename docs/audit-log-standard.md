# Audit Log Standard

## Purpose

This standard defines public-safe audit fields for supervised trading-agent governance documentation.

It does not authorize storing real trade logs, account data, broker data, balances, positions, returns, strategies, signals, or credentials in this repository.

## Audit Fields

| Field | Description |
| --- | --- |
| Audit ID | Stable public-safe identifier. |
| Artifact | Governance document, risk entry, template, or claim under review. |
| Event type | Risk review, change request, approval, claim review, incident, or publication. |
| Boundary | Public, Private, Sealed, or Mixed. |
| Reviewer | Human reviewer or review role. |
| Decision | Approved, returned, blocked, escalated, or archived. |
| Disclaimer check | Complete, incomplete, not applicable, or returned. |
| Prohibited-content check | Pass, fail, or escalated. |
| Excluded material | Public-safe summary of what was excluded. |
| Follow-up | Required correction, review, or control update. |

## Audit Rules

- Use synthetic examples in this public repository.
- Do not include real trades, account data, balances, returns, positions, broker details, API keys, credentials, private prompts, private model outputs, private operations, or sealed IP.
- Store real private audit records outside this public repository and mark any public reference as `Private / Not public`.

## Approval Rule

An audit log supports traceability. It is not financial advice, investment advice, compliance approval, or permission to trade.
