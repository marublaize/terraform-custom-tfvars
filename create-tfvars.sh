#!/bin/bash

python3 "./script.py"

input="./tfvars.txt"

echo ""
echo "#############################################"
echo "Reading ENVs from file..."
echo "#############################################"

while IFS= read -r line
do
  export "$line"
done < "$input"

echo ""
echo "#############################################"
echo "Done. Executing terraform..."
echo "#############################################"

./terraform.sh