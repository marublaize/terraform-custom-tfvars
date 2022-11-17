#!/bin/bash

echo "#############################################"
echo "Executing terraform init..."
echo "#############################################"

terraform init

echo ""
echo "#############################################"
echo "Executing terraform plan..."
echo "#############################################"

terraform plan -out tfapply

echo ""
echo "#############################################"
echo "Executing terraform apply..."
echo "#############################################"

terraform apply -auto-approve tfapply
