# GS-Blueguard-DevOps

# BlueGuard Application

## Descrição do Projeto

BlueGuard é uma aplicação desenvolvida para monitoramento marítmo. Este projeto utiliza Spring Boot para o backend e está configurado para ser containerizado usando Docker. Além disso, utilizamos Docker Compose para orquestrar o serviço e garantir a persistência de dados através de volumes.

## Estrutura do Projeto

- `src/`: Contém o código fonte do projeto.
- `Dockerfile`: Arquivo de configuração do Docker para containerização da aplicação.
- `docker-compose.yml`: Arquivo de configuração do Docker Compose para orquestrar serviços, volumes e redes.

## Pré-requisitos
- JDK 22
- Maven
- Docker
- Docker Compose


## Passo a passo para rodar o projeto

- Baixar o arquivo/clonar o repositório
- entrar local correto dos arquivos, '' cd /gs-main/blueguard ''
- mvn clean package (para criar o .JAR / dependendo não é necessário)
- ls target/    ( verificar se o .JAR está listado corretamente )
- docker-compose up --build
- Se tudo estiver configurado corretamente, o seu aplicativo Spring Boot deverá estar rodando em um contêiner Docker, acessível na porta 8080 do seu host.
- Verificar também os dados persistentes, se estão sendo salvos conforme esperado no volume criado.
- FIM!


