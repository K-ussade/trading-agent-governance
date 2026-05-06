#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "DISCLAIMER.md"
  "docs/architecture.md"
  "docs/governance-standard.md"
  "docs/risk-register.md"
  "docs/human-review-standard.md"
  "docs/audit-log-standard.md"
  "docs/prohibited-content.md"
  "docs/public-private-boundaries.md"
  "docs/claim-review-standard.md"
  "docs/incident-response.md"
  "docs/status-language.md"
  "docs/graphs/governance-system-map.md"
  "docs/graphs/risk-review-flow.md"
  "docs/graphs/human-approval-flow.md"
  "docs/graphs/audit-log-flow.md"
  "docs/graphs/public-private-boundary-map.md"
  "templates/risk-register-entry.template.md"
  "templates/trade-review-log.template.md"
  "templates/agent-change-request.template.md"
  "templates/incident-log.template.md"
  "templates/claim-review.template.md"
  "templates/operator-runbook.template.md"
  "examples/README.md"
  "examples/synthetic-risk-register-example.md"
  "examples/synthetic-audit-log-example.md"
  "scripts/validate-trading-agent-governance.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

missing=0

printf "Trading Agent Governance Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nDisclaimer And Boundary Checks\n"

for term in "not financial advice" "not investment advice" "not a trading system" "not a trading bot" "educational governance documentation only" "trading strategies" "signals" "returns" "balances" "account data" "performance claims" "return claims" "credentials" "tokens" "API keys" "secrets" "private prompts" "private model outputs" "donor data" "student data" "volunteer private data" "customer data" "private Foundation operations" "private training corpora" "security-sensitive NEURONA operational details" "sealed YOSO-YAi LLC IP" "Synthetic" "Draft / review-required" "Private / Not public"; do
  if grep -Riq "$term" "$ROOT_DIR"/README.md "$ROOT_DIR"/DISCLAIMER.md "$ROOT_DIR"/AGENTS.md "$ROOT_DIR"/docs "$ROOT_DIR"/templates "$ROOT_DIR"/examples; then
    printf "PASS  required term present: %s\n" "$term"
  else
    printf "FAIL  required term missing: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

printf "\nSynthetic Example Checks\n"

for example in "$ROOT_DIR"/examples/synthetic-*.md; do
  rel="${example#$ROOT_DIR/}"
  if grep -qF "Synthetic" "$example" && grep -Eiq "does not include|not evidence of trading performance" "$example"; then
    printf "PASS  %s is clearly synthetic\n" "$rel"
  else
    printf "FAIL  %s lacks synthetic non-claim language\n" "$rel"
    missing=$((missing + 1))
  fi
done

printf "\nRuntime And Advice Exclusion Checks\n"

if grep -Riq "documentation-only" "$ROOT_DIR"/README.md "$ROOT_DIR"/SECURITY.md "$ROOT_DIR"/docs && \
   grep -Riq "does not run bots" "$ROOT_DIR"/docs "$ROOT_DIR"/SECURITY.md && \
   grep -Riq "Nothing in this repository should be interpreted as a recommendation" "$ROOT_DIR"/DISCLAIMER.md; then
  printf "PASS  bot runtime and advice are excluded\n"
else
  printf "FAIL  bot runtime or advice exclusion language missing\n"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - trading agent governance repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
