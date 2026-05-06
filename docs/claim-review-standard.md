# Claim Review Standard

## Purpose

This standard defines how public claims about supervised trading-agent governance are reviewed.

## Claims That Require Removal

| Claim Type | Action |
| --- | --- |
| Financial advice or investment advice | Remove. |
| Strategy, signal, recommendation, allocation, or timing claim | Remove. |
| Return, balance, profit, performance, or makes-money claim | Remove. |
| Client outcome or service-delivery claim without review and evidence | Remove or mark `Draft / review-required`. |
| Compliance certification or regulatory approval claim | Remove unless formal review and approved language exist. |
| Live bot, live trading system, or execution claim | Remove unless public evidence and approval exist; this repo still must not contain runtime code. |

## Allowed Claim Pattern

```text
This repository provides public-safe governance documentation templates for supervised trading-agent research systems. It is not financial advice, investment advice, a trading bot, a trading system, or evidence of trading performance.
```

## Review Fields

| Field | Requirement |
| --- | --- |
| Claim | Exact claim under review. |
| Status | Draft / review-required, approved, removed, or blocked. |
| Evidence | Public evidence if any. |
| Disclaimer | Present or missing. |
| Prohibited-content check | Pass, fail, or escalated. |
| Reviewer | Human reviewer. |

## Non-Approval

A polished README, passing validation, or public repository does not prove trading performance, investment merit, financial advice quality, client outcomes, or compliance approval.
