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

1- Baixar o arquivo/clonar o repositório
2- entrar local correto dos arquivos, '' cd /gs-main/blueguard ''
3- mvn clean package (para criar o .JAR / dependendo não é necessário)
4- ls target/    ( verificar se o .JAR está listado corretamente )
5- docker-compose up --build
6- Se tudo estiver configurado corretamente, o seu aplicativo Spring Boot deverá estar rodando em um contêiner Docker, acessível na porta 8080 do seu host.
7- Verificar também os dados persistentes, se estão sendo salvos conforme esperado no volume 'app-data'.
8- FIM!


