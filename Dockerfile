FROM openjdk:22-jdk-slim

#Definindo diretório padrão
WORKDIR /app

#Definindo ARG e ENV
ARG JAR_FILE=target/blueguard-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""

#Copiando o JAR para o contêiner
COPY ${JAR_FILE} app.jar

#Criando usuário não privilegiado
RUN groupadd -r appgroup && useradd -r -g appgroup appuser
RUN chown -R appuser:appgroup /app

#Mudando para o usuário não privilegiado
USER appuser

#Comando para rodar a aplicação
CMD ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
