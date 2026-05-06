# Architecture

## Purpose

This document defines the documentation architecture for `trading-agent-governance`.

The repository is documentation-only. It does not run bots, connect to accounts, fetch broker data, route orders, execute trades, store strategies, publish signals, or provide financial advice.

## Architecture Overview

| Layer | Files | Role |
| --- | --- | --- |
| Public entry | `README.md`, `DISCLAIMER.md`, `AGENTS.md`, `CONTRIBUTING.md`, `SECURITY.md` | State purpose, disclaimer, authority, contribution rules, and security scope. |
| Governance controls | `docs/governance-standard.md`, `docs/human-review-standard.md` | Define authority, approvals, change control, and operating boundaries. |
| Risk and audit | `docs/risk-register.md`, `docs/audit-log-standard.md`, `docs/incident-response.md` | Define risk review, audit fields, and incident handling. |
| Claim controls | `docs/prohibited-content.md`, `docs/claim-review-standard.md`, `docs/status-language.md` | Block advice, strategy, signal, return, performance, account, and unsupported claims. |
| Boundaries | `docs/public-private-boundaries.md` | Define public/private/sealed handling. |
| Graphs | `docs/graphs/*.md` | Communicate governance, risk review, human approval, audit, and boundary flows. |
| Templates | `templates/*.template.md` | Provide reusable governance forms with public-safe placeholders. |
| Examples | `examples/*.md` | Demonstrate usage with synthetic content only. |
| Validation | `scripts/validate-trading-agent-governance.sh` | Checks required files, graph sections, disclaimer language, prohibited content, and synthetic labeling. |

## Governance Shape

```text
change request -> risk review -> human approval -> documentation update -> audit note -> claim review before publication
```

No stage authorizes trade execution, account connection, strategy disclosure, signal publishing, or financial advice.

## Documentation Boundaries

| Boundary | Rule |
| --- | --- |
| Public | Governance standards, templates, diagrams, prohibited-content rules, and synthetic examples. |
| Private | Real operations, private prompts, private model outputs, risk notes, audit logs, account context, and internal review records. |
| Sealed | Strategy, signals, credentials, protected methods, restricted IP, private training corpora, and sensitive infrastructure details. |

## Quality Gate

The repository is complete only when validation passes, disclaimer language is present, examples are synthetic, prohibited content is explicit, human approval gates are required, and no strategies, signals, returns, balances, account data, credentials, or performance claims are included.
