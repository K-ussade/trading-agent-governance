# Contributing

## Purpose

Contributions should improve public-safe governance documentation for supervised trading-agent research systems.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Examples | Use synthetic examples only. |
| Runtime code | Do not add bots, execution systems, broker integrations, account automation, or order-routing code. |
| Trading content | Do not add strategies, signals, recommendations, allocations, returns, balances, performance claims, or account data. |
| Advice | Do not add financial advice, investment advice, tax advice, legal advice, or compliance certification claims. |
| Sensitive data | Do not submit credentials, API keys, tokens, private prompts, model outputs, private operations, customer data, donor data, student data, volunteer data, or sealed IP. |
| Graphs | Update diagrams when governance, risk, approval, audit, or boundary behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] Examples are synthetic.
- [ ] No trading bot, execution logic, broker integration, or account automation is introduced.
- [ ] No strategies, signals, recommendations, returns, balances, account data, performance claims, or return claims are included.
- [ ] No financial advice or investment advice is included.
- [ ] Human approval gates remain explicit.
- [ ] `scripts/validate-trading-agent-governance.sh` passes.

## Security And Privacy

Do not open public issues containing credentials, tokens, account data, private incidents, private prompts, private model outputs, private operations, sensitive infrastructure details, or sealed YOSO-YAi LLC IP.
