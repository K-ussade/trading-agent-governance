# Trading Agent Governance

## Purpose

`trading-agent-governance` is a public-safe governance and documentation repository for supervised trading-agent research systems, risk review, operating boundaries, audit logs, claim review, and compliance-aware documentation.

This repository is not a trading bot. It is not financial advice. It is not investment advice. It is not a trading system. It does not include trading strategies, signals, returns, balances, account data, credentials, API keys, private prompts, private model outputs, performance claims, or return claims.

The repository shows how an operator can document and supervise automated trading research systems without exposing private strategy, private operations, private data, credentials, sealed IP, or financial advice.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded / published |
| Steward | Alexandra Caussade public technical identity |
| Repository type | Public governance documentation kit |
| Runtime status | Documentation-only; no bot, no agent runtime, no execution system |
| Canonical source | GitHub public repository after publication |
| Public boundary | Governance standards, templates, diagrams, and synthetic examples only |
| Financial posture | Educational governance documentation only; not financial advice or investment advice |
| Monetization posture | Future / draft / review-required proof support only |

## What This Repository Includes

| Area | Included | Not Included |
| --- | --- | --- |
| Governance | Human approval, operating boundaries, risk review, and change-control templates. | Trading bots, account automation, order routing, or execution logic. |
| Risk review | Risk-register structure for documentation and escalation. | Strategies, signals, positions, returns, balances, or account performance. |
| Audit logs | Public-safe audit fields and synthetic examples. | Real trade logs, account data, broker data, API details, credentials, or private logs. |
| Claim review | Rules for public statements about supervised trading-agent governance. | Performance claims, return claims, client outcomes, or financial advice. |
| Incidents | Public-safe incident-response documentation. | Private incidents, sensitive security details, or operational account data. |

## Public Boundary

Allowed public material:

- governance standards;
- risk review templates;
- human approval gates;
- claim review checklists;
- audit-log field definitions;
- synthetic examples;
- public-safe Mermaid diagrams.

Forbidden material:

- trading bots, live autonomous agents, execution systems, order routing, account automation, or broker integration details;
- trading strategies, signals, recommendations, portfolio allocations, returns, balances, account screenshots, performance claims, return claims, or client outcome claims;
- financial advice, investment advice, tax advice, legal advice, or compliance certification claims;
- credentials, tokens, API keys, secrets, account data, private prompts, private model outputs, private training corpora, private operations, or sealed YOSO-YAi LLC IP;
- donor data, student data, volunteer private data, customer data, private Foundation operations, exact sensitive infrastructure locations, or security-sensitive NEURONA operational details.

## Related Public Repositories

- [K-ussade profile](https://github.com/K-ussade/K-ussade)
- [autonomous-ai-ops-kit](https://github.com/K-ussade/autonomous-ai-ops-kit)
- [research-agent-workflows](https://github.com/K-ussade/research-agent-workflows)
- [civic-ai-safety-notes](https://github.com/K-ussade/civic-ai-safety-notes)
- [foundation-portfolio-proof](https://github.com/K-ussade/foundation-portfolio-proof)

## Disclaimer

Read [DISCLAIMER.md](DISCLAIMER.md) before using this repository. This repository is educational governance documentation only and must not be used as financial advice, investment advice, trading advice, a trading system, a trading bot, or evidence of trading performance.

## Validation

Run:

```bash
scripts/validate-trading-agent-governance.sh
```

## First Milestone

Version `0.1.0` is complete when all governance standards, templates, synthetic examples, diagrams, disclaimer language, prohibited-content rules, and validation checks are present; every example is synthetic; human approval gates are explicit; and no strategy, signal, account, balance, return, performance, credential, or private data is included.
