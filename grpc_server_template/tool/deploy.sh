#!/usr/bin/env bash

PROJECT_ID='<PROJECT_ID>'
SERVICE_NAME='<SERVICE_NAME>'

# at setup
# gcloud auth login
gcloud config set project $PROJECT_ID

gcloud builds submit --tag gcr.io/$PROJECT_ID/$SERVICE_NAME
gcloud beta run deploy test5 --platform=managed --region=europe-west1 --allow-unauthenticated --image gcr.io/$PROJECT_ID/$SERVICE_NAME