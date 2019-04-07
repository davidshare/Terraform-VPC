#!/bin/bash

# add environment variables
source ./.env

#switch to the packer directory
cd ./packer

# run build with packer and get the packer output
packer build ./packer_template.json

# exit the packer directory
cd ../terraform

# initialize terraform
terraform init

# run the terraform plan
terraform plan

# apply the terraform plan
terraform apply -auto-approve

