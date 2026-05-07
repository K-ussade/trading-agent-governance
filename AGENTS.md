# AGENTS.md

This file governs Codex work inside `trading-agent-governance`.

## Repository Role

`trading-agent-governance` is a public-safe governance documentation kit for supervised trading-agent research systems, risk review, human approval, audit logs, claim review, incident response, and prohibited-content rules.

It is not a trading bot, trading system, financial advice repository, investment advice repository, execution system, account automation layer, strategy library, signal library, private prompt library, or performance record.

## Authority

- Alexandra Caussade stewards this repository through the K-ussade public technical brand/account surface.
- Human review remains upstream of governance decisions, publication, claims, escalation, financial-language review, and any private operational handling.
- Codex may draft public-safe governance documentation, templates, synthetic examples, Mermaid diagrams, and validation checks.
- Codex is not financial authority, investment authority, legal authority, compliance authority, security authority, operations authority, or publication authority.

## Entity Boundary Rules

- YOSO-YAi LLC and the 218 Network Foundation are distinct.
- The Foundation is not a YOSO-YAi LLC product, marketing arm, or CSR project.
- YOSOR is a product of YOSO-YAi LLC, not a separate legal entity.
- Do not use Foundation work as company marketing proof.
- Do not use company product language to define Foundation legitimacy.

## Public Boundary

Allowed:

- public-safe governance standards;
- synthetic examples;
- risk-register, claim-review, audit-log, incident, and runbook templates;
- human approval gates;
- public-safe Mermaid diagrams.

Forbidden:

- trading bots;
- live autonomous agents;
- execution systems;
- order routing or broker integration details;
- trading strategies or signals;
- financial advice or investment advice;
- recommendations, allocations, performance claims, return claims, balances, account screenshots, or account data;
- credentials, tokens, API keys, and secrets;
- private prompts or private model outputs;
- private operations or private training corpora;
- donor data, student data, volunteer private data, customer data, or private Foundation operations;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- sealed YOSO-YAi LLC IP;
- client outcomes, active service claims, or monetization claims without review.

## Writing Rules

- Write in precise infrastructure-tech language.
- Mark examples as synthetic.
- Use disclaimer language whenever financial or trading context appears.
- Frame this repository as governance documentation only.
- Do not add code that connects to accounts, routes orders, fetches broker data, or executes trades.
- Do not include strategies, signals, returns, balances, prompts, API details, account data, or performance claims.

## Validation

Before final response after edits:

1. Run `scripts/validate-trading-agent-governance.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
