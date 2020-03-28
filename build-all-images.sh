#!/bin/bash

if [ ! -d "jars" ]; then
    echo "jars sym link not present, creating."
    ln -s ../hurtrade ./jars
fi

echo "Building images."
docker build -f ./fx-gecko/Dockerfile -t faisalthaheem/hurtrade-coin-gecko:latest ./jars
docker build -f ./hurcpu/Dockerfile -t faisalthaheem/hurtrade-hurcpu:latest ./jars
docker build -f ./mqstats/Dockerfile -t faisalthaheem/hurtrade-mqstats:latest ./jars
docker build -f ./webauth/Dockerfile -t faisalthaheem/hurtrade-webauth:latest ./jars
docker build -f ./rabbitmq/Dockerfile -t faisalthaheem/hurtrade-rabbitmq:latest ./jars
docker build -f ./db/Dockerfile -t faisalthaheem/hurtrade-pgsql:latest ./jars

echo "Build complete."