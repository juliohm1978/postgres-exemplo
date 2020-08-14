# postgres-exemplo

Um pequeno exemplo de PostgreSQL e PgAdmin executando com docker-compose

## Requisitos

* Ubuntu 18.04+ ou distribuições compatíveis
* Docker instalado (<https://docs.docker.com/get-docker>)
* docker-compose instalado (<https://docs.docker.com/compose/install>)
* Git para obter o código deste repostório

## Como Usar

Obtenha o código deste repositório:

    git clone https://github.com/juliohm1978/postgres-exemplo.git

> CUIDADO: Não modifique o nome do diretório criado `postgres-exemplo`, pois o nome dos componentes na execução depende dele.

Para inicar os serviços:

    cd postgres-exemplo
    make

Ao iniciar, alguns componentes serão instalados (jq) e alguns diretórios precisam ser criados com permissões diferenciadas. Por isso, a senha `sudo` será solicitada.

    Vamos preparar seu ambiente...

    ## Aguarde alguns instantes enquanto o ambiente é preprado.
    ## A senha sudo será solicitada.

    ## ...

    👉 PgAdmin 
        Hostname  : http://172.20.0.3
        Usuário   : admin
        Senha     : admin

    👉 Banco de dados
        Hostname : bancodedados (172.20.0.2)
        Usuário  : postgres
        Senha    : postgres

Quando obter os endereços e as credenciais, tente acessar o PgAdmin de seu navegador. Caso não esteja pronto, pode esperar alguns instantes.

Para desligar os serviços:

    make stop

Para remover tudo e começar do zero:

    make clean
    make

Para obter os logs de cada componente e diagnosticar problemas:

    make logs
