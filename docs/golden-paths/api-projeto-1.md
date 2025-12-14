# Como criar uma API Segura (Projeto 1)

Este guia utiliza o **UMN Secure Chat System** como referência para a criação de APIs seguras com Node.js e Express.

## 📋 Visão Geral
O padrão do Projeto 1 foca em segurança e comunicação em tempo real.

### Stack Tecnológica
- **Runtime**: Node.js
- **Framework**: Express
- **Real-time**: Socket.IO
- **Segurança**: JWT, RSA, AES, SHA-256

## 🚀 Passo a Passo para Iniciar

### 1. Clonar e Configurar
Clone o repositório base (ex: `chat-umn`):

```bash
git clone https://github.com/isaac/chat-umn.git
cd chat-umn/server
```

### 2. Instalar Dependências
```bash
npm install
```

### 3. Configurar Variáveis de Ambiente
Crie um arquivo `.env` na pasta `server/` com as seguintes chaves (exemplo):

```env
PORT=3001
JWT_SECRET=sua_chave_secreta_super_segura
DB_PATH=./database.sqlite
CORS_ORIGIN=http://localhost:5173
```

### 4. Executar o Servidor
```bash
npm start
```
O servidor iniciará (geralmente na porta 3001) e estará pronto para aceitar conexões Socket.IO e requisições REST.

## 🛡️ Padrões de Segurança Implementados

Ao criar sua API baseada neste template, certifique-se de manter:

1.  **Criptografia End-to-End**: O servidor apenas retransmite mensagens cifradas; não deve ter acesso ao conteúdo em texto plano.
2.  **Autenticação JWT**: Proteja rotas sensíveis com middleware de verificação de token.
3.  **Sanitização**: Utilize bibliotecas para limpar inputs e evitar XSS/Injection.
4.  **Rate Limiting**: Implemente limites de requisições por IP para evitar DDoS.
