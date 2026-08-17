# Imagem base oficial do Node.js (versão LTS Alpine para leveza e segurança)
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de definição de dependências
COPY package.json package-lock.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código-fonte do projeto
COPY . .

# Expõe a porta padrão do React (3000)
EXPOSE 3000

# Variáveis de ambiente para garantir Hot Reload estável e rápido no Docker
ENV WATCHPACK_POLLING=true
ENV CHOKIDAR_USEPOLLING=true
ENV CHOKIDAR_INTERVAL=300
ENV FAST_REFRESH=true
ENV WDS_SOCKET_PORT=0

# Inicia o servidor de desenvolvimento do React
CMD ["npm", "start"]
