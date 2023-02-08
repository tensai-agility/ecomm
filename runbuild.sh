#!/usr/bin/env bash
#mvn -f ecomm-backend/pom.xml clean package -DskipTests
#docker image build -f Dockerfile.ecomapi -t  hexadevops/ecomapi:latest .
docker image build -f Dockerfile.ecomui -t hexadevops/ecomui:latest .
#docker push hexadevops/ecomapi:latest
docker push hexadevops/ecomui:latest

#kubectl exec -it postgres-deployment-6d46c57765-lqhpc -n saecom -- bash
#psql -Utensai --password ecommerce
