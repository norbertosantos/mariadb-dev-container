# COMO CONSTRUIR UM AMBIENTE DE DESENVOLVIMENTO PARA BANCOS DE DADOS MARIA DB 10.7.1

Este repositório tem o código e um passo a passo de como gerar uma imagem com o Maria Db 10.7.1 e construir containers para rodar instâncias de bancos Maria Db no seu ambiente de desenvolvimento.

**1) Construir a nossa imagem a partir do nosso Dockerfile.**

```docker
docker build -t <nome_repositorio>/mariadb:10.7.1 .

```
**2) Criar um volume gerenciado pelo Docker para armazenar os dados da nossa base Maria Db.**

```docker

docker volume create <nome_volume>

```
Ex:
```docker

docker volume create mariadb_volume

```
**3) A documentação oficial da imagem do Maria Db nos mostra que precisamos informar duas variáveis de ambiente:**

* MARIADB_USER
* MARIADB_PASSWORD

**4) Outra questão importante. É especificarmos o port bind para indicar qual porta será usada para rodar o nosso container a ser criado. O Maria Db utiliza a porta 3808**

**5) Para criarmos um container para rodar uma instância de um banco de dados Maria Db. Vamos utilizar o seguinte comando:**

```docker
docker container run -d -p 3808:3808 --name <nome_container> <nome_repositorio>/mariadb:10.7.1

```

Para maiores informações de como criar as suas imagens e containers para rodar banco de dados Maria Db. Consultar o link abaixo.

[Documentação oficial da imagem do Maria Db](https://hub.docker.com/_/mariadb)



 
