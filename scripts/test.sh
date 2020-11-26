#! /bin/bash

docker build -t testing-img -f testing/Dockerfile .
docker run -it -d --name testing-cont testing-img

docker exec testing-cont pytest ./service-1 --cov ./service-1
docker exec testing-cont pytest ./service-2 --cov ./service-2

docker stop testing-cont
docker rm testing-cont
