# Organo - React App com Docker

Projeto base em **React (JavaScript)** criado com `create-react-app` e totalmente configurado para rodar em **Docker** em qualquer ambiente (Windows, Linux, macOS) com suporte nativo a *Hot Reloading*.

---

## 🚀 Como Executar com Docker (Recomendado)

### Pré-requisitos:
- [Docker](https://www.docker.com/) e [Docker Compose](https://docs.docker.com/compose/) instalados e em execução.

### Passos:

1. Acesse o diretório do projeto:
   ```bash
   cd organo
   ```

2. Suba o container com o Docker Compose:
   ```bash
   docker compose up --build
   ```

3. Acesse a aplicação no seu navegador:
   👉 **[http://localhost:3000](http://localhost:3000)**

4. Para parar a execução dos containers:
   ```bash
   docker compose down
   ```

---

## ⚡ Fluxo de Desenvolvimento e Hot Reload

O ambiente foi preparado para que você **não precise reiniciar o container a cada alteração de código**.

### 📋 Guia de Ações no Dia a Dia

| Tipo de Alteração | Precisa reiniciar / rebuildar? | Ação Necessária |
| :--- | :---: | :--- |
| **Edição de código React** (`src/App.js`, componentes, `.js`, `.css`) | ❌ **NÃO** | Basta salvar o arquivo (`Ctrl + S`). O navegador atualiza instantaneamente. |
| **Adição de arquivos estáticos** (`public/`, imagens, ícones) | ❌ **NÃO** | Salvar e referenciar normalmente no código. |
| **Instalação de novas bibliotecas** (ex: `npm install axios`) | ⚠️ **SIM** | Precisa regerar a imagem com `docker compose up --build`. |
| **Alterações no `Dockerfile` ou `docker-compose.yml`** | ⚠️ **SIM** | Reiniciar com `docker compose up --build`. |

---

## 📦 Como Instalar Novas Dependências com Docker

Quando precisar adicionar um novo pacote (ex: `axios`, `react-icons`, etc.), você tem duas formas:

### Opção 1: Direto no container ativo (Mais Rápido)
Com o container rodando, execute no terminal:
```bash
docker compose exec organo-app npm install <nome-do-pacote>
```

### Opção 2: Rebuildando o container
1. Adicione o pacote localmente no `package.json` ou execute `npm install <nome-do-pacote>` localmente.
2. Reconstrua e suba o container:
```bash
docker compose up --build
```

---

## 💻 Como Executar Localmente sem Docker

Caso queira executar diretamente com Node.js na sua máquina:

1. Instale as dependências:
   ```bash
   npm install
   ```

2. Inicie o servidor de desenvolvimento:
   ```bash
   npm start
   ```

3. Para gerar a build de produção:
   ```bash
   npm run build
   ```

4. Para rodar os testes:
   ```bash
   npm test
   ```

---

## 📁 Estrutura do Projeto

```text
organo/
├── .dockerignore        # Arquivos ignorados pelo build do Docker
├── Dockerfile           # Configuração da imagem Docker
├── docker-compose.yml   # Orquestração do container de desenvolvimento
├── package.json         # Dependências e scripts do React
├── public/              # Arquivos públicos (index.html, manifest, ícones)
└── src/                 # Código-fonte React em JavaScript
    ├── App.js
    ├── App.css
    ├── index.js
    └── ...
```
