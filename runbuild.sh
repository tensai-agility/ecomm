#!/usr/bin/env bash
mvn -f ecomm-backend/pom.xml clean package -DskipTests
docker image build --no-cache -f Dockerfile.ecomapi -t  hexadevops/ecombackend:latest .
docker image build --no-cache -f Dockerfile.ecomui -t hexadevops/ecomfrontend:latest .
docker push hexadevops/ecombackend:latest
docker push hexadevops/ecomfrontend:latest

#kubectl exec -it postgres-deployment-6d46c57765-lqhpc -n saecom -- bash
#psql -Utensai --password ecommerce
