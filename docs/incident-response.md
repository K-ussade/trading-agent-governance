# Incident Response

## Purpose

This document defines public-safe incident response for trading-agent governance documentation.

## Incident Examples

| Incident Type | Example | Public Handling |
| --- | --- | --- |
| Advice drift | Draft implies buy, sell, hold, or timing guidance. | Remove wording and run claim review. |
| Performance drift | Draft implies returns, balances, profit, or makes-money claim. | Remove wording and run claim review. |
| Strategy leak | Draft includes strategy, signal, or allocation detail. | Stop work and escalate privately. |
| Credential exposure | API key, token, secret, or account data appears. | Stop work and escalate privately. |
| Runtime drift | Change adds bot, execution, broker, or order-routing code. | Reject change and update prohibited-content checks. |

## Severity Levels

| Severity | Meaning | Required Response |
| --- | --- | --- |
| Low | Ambiguous wording with no sensitive material. | Correct wording and record follow-up. |
| Medium | Advice, performance, or unsupported claim risk before publication. | Stop affected work and require claim review. |
| High | Strategy, signal, account data, or private operations appears in a public-bound artifact. | Contain and escalate privately. |
| Critical | Credentials, sealed IP, account access detail, private data, or sensitive security material is exposed. | Stop all related work and escalate privately. |

## Response Flow

1. Detect.
2. Contain affected artifact.
3. Classify severity.
4. Remove or block prohibited content.
5. Escalate to human reviewer.
6. Update claim review, templates, or validation checks.
7. Record only a public-safe incident note if appropriate.

## Public Incident Notes

Public incident notes must not include strategies, signals, returns, balances, account data, credentials, private prompts, private model outputs, private operations, sensitive infrastructure details, or sealed YOSO-YAi LLC IP.
