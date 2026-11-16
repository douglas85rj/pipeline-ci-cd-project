FROM node:18

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos de package.json e package-lock.json
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos da aplicação
COPY . .

# Expõe a porta que a aplicação irá rodar
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "src/app.js"]