#!/bin/bash
curl -L https://bit.ly/n-install | bash -s -- -y lts 
. /root/.bashrc
npm run start &

docker-entrypoint.sh mysqld &
sleep 30

cd /dump
# Iterate over each .sql file in the folder
for dump in *.sql; do
    echo "Loading dump into MySQL"
    mysql -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} < "$dump"
done

echo "All dumps have been loaded."


wait