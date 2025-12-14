# Como rodar o UMN Secure Chat

Este guia detalha o processo para iniciar o ambiente de desenvolvimento do Chat Seguro.

## Pré-requisitos
- Node.js 16+
- NPM ou Yarn
- Git

## Estrutura do Projeto
O projeto é dividido em cliente e servidor:
- \client/\: Aplicação React (Frontend)
- \server/\: API Node.js + Socket.IO (Backend)

## Passo a Passo

### 1. Configuração do Backend

1. Navegue para a pasta do servidor:
   \\\ash
   cd chat-umn/server
   \\\
2. Instale as dependências:
   \\\ash
   npm install
   \\\
3. Configure as variáveis de ambiente (copie o exemplo se houver):
   \\\ash
   cp .env.example .env
   \\\
4. Inicie o servidor:
   \\\ash
   npm start
   \\\
   _O servidor rodará geralmente na porta 3001 ou 5000._

### 2. Configuração do Frontend

1. Abra um novo terminal e navegue para a pasta do cliente:
   \\\ash
   cd chat-umn/client
   \\\
2. Instale as dependências:
   \\\ash
   npm install
   \\\
3. Inicie a aplicação React:
   \\\ash
   npm run dev
   \\\
   _O frontend estará disponível em http://localhost:5173 (se usar Vite)._

## Troubleshooting
- **Erro de Porta em Uso**: Verifique se não há outros serviços rodando nas portas padrão.
- **Conexão Socket Falhou**: Certifique-se de que o CORS no backend está configurado para aceitar a origem do frontend.