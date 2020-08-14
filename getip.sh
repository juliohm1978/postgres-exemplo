clear
IP=$(docker inspect postgres-exemplo_pgadmin_1 | jq -r '.[0].NetworkSettings.Networks["postgres-exemplo_default"].IPAddress')
IP_DB=$(docker inspect postgres-exemplo_bancodedados_1 | jq -r '.[0].NetworkSettings.Networks["postgres-exemplo_default"].IPAddress')


echo "Aguarde alguns instantes... "
sleep 5
echo
echo "👉 PgAdmin "
echo "       Hostname  : http://$IP"
echo "       Usuário   : admin"
echo "       Senha     : admin"
echo
echo "👉 Banco de dados"
echo "        Hostname : bancodedados ($IP_DB)"
echo "        Usuário  : postgres"
echo "        Senha    : postgres"
echo
echo "Se o PgAdmin ou PostgreSQL não estiverem acessíveis, tente aguardar alguns instantes."
echo "Para diagnosticar problemas, confira os logs:"
echo
echo "    make logs"
echo
