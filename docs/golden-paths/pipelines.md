# Pipelines e Testes Automatizados (Projeto 5)

Este guia cobre a configuração de pipelines de CI/CD e testes automatizados, utilizando **Zara E2E Tests** (Playwright) como referência.

## 🧪 Automação de Testes (E2E)

O Projeto 5 foca na garantia de qualidade através de testes End-to-End.

### Pré-requisitos
- Node.js instalado
- Navegadores instalados (via Playwright)

### Configuração Inicial
Para configurar um novo projeto de testes:

```bash
npm install
npx playwright install
```

### Executando os Testes
Os comandos padrão definidos no `package.json`:

```bash
# Rodar todos os testes em modo headless
npm test

# Rodar com interface visual (Time Travel Debugging)
npm run test:ui

# Gerar relatório HTML
npm run report
```

## 🔄 Integração Contínua (CI/CD)

Exemplo de workflow do GitHub Actions para rodar testes a cada Push:

```yaml
name: Playwright Tests
on:
  push:
    branches: [ main, master ]
  pull_request:
    branches: [ main, master ]
jobs:
  test:
    timeout-minutes: 60
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: actions/setup-node@v3
      with:
        node-version: 18
    - name: Install dependencies
      run: npm ci
    - name: Install Playwright Browsers
      run: npx playwright install --with-deps
    - name: Run Playwright tests
      run: npx playwright test
    - uses: actions/upload-artifact@v3
      if: always()
      with:
        name: playwright-report
        path: playwright-report/
        retention-days: 30
```

## 🐳 Pipelines com Docker
Para projetos containerizados (como `GPN-AGIL` ou `v_edms`), o pipeline deve incluir passos de Build e Push:

1.  **Lint/Test**: Rodar testes unitários no código fonte.
2.  **Build**: `docker build -t meu-app .`
3.  **Push**: `docker push meu-registry/meu-app:tag`
