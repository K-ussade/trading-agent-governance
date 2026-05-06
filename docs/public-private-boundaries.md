# Public / Private / Sealed Boundaries

## Purpose

This document defines what may and may not appear in `trading-agent-governance`.

## Boundary Classes

| Boundary | Meaning | Handling |
| --- | --- | --- |
| Public | Safe governance documentation with no prohibited content. | May appear in this repository. |
| Private | Authorized operating group only. | Exclude details and use placeholders if needed. |
| Sealed | Explicit human authorization required before excerpt, release, or summary. | Block from this repository. |
| Mixed | Contains public and non-public material. | Split public-safe governance summary from non-public details. |

## Allowed Public Material

- governance standards;
- risk and claim review templates;
- audit field definitions;
- human approval gates;
- incident response process;
- public-safe Mermaid diagrams;
- synthetic examples.

## Forbidden Public Material

- trading bots, execution systems, order routing, broker integration details, strategies, signals, recommendations, returns, balances, positions, account screenshots, account data, performance claims, return claims, or client outcome claims;
- financial advice, investment advice, tax advice, legal advice, compliance certification, regulatory approval, or claims that any trading system makes money;
- credentials, tokens, API keys, secrets, private prompts, private model outputs, private operations, private training corpora, or sealed YOSO-YAi LLC IP;
- donor data, student data, school private data, volunteer private data, customer data, private Foundation operations, exact sensitive infrastructure locations, or security-sensitive NEURONA operational details.

## Review Rule

When unsure, classify the material as private or sealed and exclude it from this public repository until a human reviewer approves a public-safe governance summary.
