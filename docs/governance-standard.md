# Governance Standard

## Purpose

This standard defines public-safe governance documentation for supervised trading-agent research systems.

## Core Rules

| Rule | Requirement |
| --- | --- |
| Documentation-only | This repository does not contain bots, execution logic, broker integration, account automation, or trading systems. |
| Human authority | Human review is required for governance changes, risk acceptance, publication, and claim approval. |
| Prohibited content | Strategies, signals, recommendations, returns, balances, account data, credentials, and performance claims are blocked. |
| Disclaimer | Trading and financial contexts must retain disclaimer language. |
| Auditability | Governance decisions should have public-safe audit fields or private records outside this repo. |
| Boundary handling | Public, private, sealed, and mixed material must be classified before documentation is reused. |

## Governance Artifacts

| Artifact | Purpose |
| --- | --- |
| Risk register entry | Documents a risk category, control, owner, review cadence, and escalation path. |
| Agent change request | Documents proposed governance changes to a supervised research system. |
| Human review record | Captures human approval, return, block, or escalation decisions. |
| Audit log entry | Tracks public-safe decision metadata without account data. |
| Claim review | Checks public language for advice, performance, return, or client outcome claims. |
| Incident log | Documents boundary failures and corrective action using public-safe summaries. |

## Non-Claims

This repository does not claim profitable trading, trading performance, client outcomes, active services, regulatory compliance, or readiness to operate live trading systems.
