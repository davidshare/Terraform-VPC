#!/bin/bash

# add environment variables
source ./.env

#switch to the packer directory
cd ./packer

# run build with packer and get the packer output
packer build ./packer_template.json 2>&1 | tee packer_output.txt

# exit the packer directory
cd ../

# get the AMI id
bash ami_extractor.sh

# switch to the terraform directory
cd ./terraform

# initialize terraform
terraform init

# run the terraform plan
terraform plan

# apply the terraform plan
terraform apply -auto-approve

# remove the files for getting the ami
rm ami_id.tf
rm ../packer/packer_output.txt
