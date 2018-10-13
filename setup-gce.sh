#!/usr/bin/env bash

set -eux

PROJECT=$1

gcloud builds submit --project ${PROJECT} --tag gcr.io/${PROJECT}/serposcope:latest .

gcloud compute instances create-with-container serposcope \
    --project ${PROJECT} \
    --container-image gcr.io/${PROJECT}/serposcope:latest \
    --machine-type f1-micro \
    --tags serposcope

gcloud compute firewall-rules create allow-serposcope \
    --project ${PROJECT} \
    --allow tcp:7134 --target-tags serposcope

