#!/bin/bash

# Variables
PROJECT_ID="eltl-project"
BUCKET_NAME="retail-raw-data-eltl-project"

# Activer la configuration gcloud
gcloud config set project $PROJECT_ID

# Uploader les fichiers
echo "Uploading invoice.csv..."
gsutil cp data/invoice.csv gs://${BUCKET_NAME}/invoice.csv

echo "Uploading country.csv..."
gsutil cp data/country.csv gs://${BUCKET_NAME}/country.csv

echo "Files uploaded successfully!"
echo "Check Cloud Workflows execution in the GCP Console"