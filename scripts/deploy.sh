#! /bin/bash


ssh azureuser@20.68.193.79 << EOF

cd animal-app
git pull
docker stack deploy --compose-file docker-compose.yaml animal-app

EOF