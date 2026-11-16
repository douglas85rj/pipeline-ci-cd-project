# Pipeline CI/CD Project

Este projeto é um exemplo de um pipeline de implantação automatizada em múltiplos ambientes para uma aplicação web. O objetivo é demonstrar como configurar um fluxo de trabalho CI/CD usando GitHub Actions, Docker e um ambiente de implantação.

## Estrutura do Projeto

```
pipeline-ci-cd-project
├── src
│   ├── app.js               # Ponto de entrada da aplicação web
│   └── tests
│       └── app.test.js      # Testes automatizados da aplicação
├── .github
│   └── workflows
│       └── ci-cd-pipeline.yml # Definição do pipeline CI/CD
├── Dockerfile                # Instruções para construir a imagem Docker
├── docker-compose.yml        # Configuração para executar múltiplos contêineres
├── package.json              # Manifesto do projeto Node.js
├── README.md                 # Documentação do projeto
└── .env.example              # Modelo para variáveis de ambiente
```

## Tecnologias Utilizadas

- **Node.js**: Ambiente de execução para a aplicação web.
- **Docker**: Para containerização da aplicação.
- **GitHub Actions**: Para automação do pipeline CI/CD.
- **Jest/Pytest**: Para testes automatizados.

## Instruções de Instalação

1. Clone o repositório:

   ```
   git clone https://github.com/douglas85rj/pipeline-ci-cd-project.git
   cd pipeline-ci-cd-project
   ```
2. Instale as dependências:

   ```
   npm install
   ```
3. Crie um arquivo `.env` a partir do `.env.example` e configure suas variáveis de ambiente.

## Uso

Para iniciar a aplicação localmente, utilize o comando:

```
npm start
```

## Pipeline CI/CD

O pipeline CI/CD é configurado no arquivo `.github/workflows/ci-cd-pipeline.yml`. Ele inclui os seguintes passos:

- Executar testes em cada solicitação de pull request.
- Criar uma imagem Docker e enviá-la para o Registro de Contêineres do GitHub.
- Implantar automaticamente no ambiente de teste após a mesclagem na branch `develop`.
- Implantar em produção após aprovação manual, após a fusão na branch `main`.

## Contribuição

Sinta-se à vontade para contribuir com melhorias ou correções. Faça um fork do repositório e envie um pull request com suas alterações.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo LICENSE para mais detalhes.
