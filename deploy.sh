#!/bin/bash

echo "======================================"
echo "          STARTING DEPLOYMENT"
echo "======================================"

# Create deployment directory

mkdir -p deployment

# Copy application

cp app.sh deployment/

# Create deployment information

echo "Deployment completed on: $(date)" > deployment/deployment-info.txt

echo ""
echo "Application deployed successfully!"

echo ""
echo "Deployment contents:"

ls -l deployment

echo ""
echo "======================================"
echo "       DEPLOYMENT COMPLETED"
echo "======================================"
