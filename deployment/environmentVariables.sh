#!/bin/bash
echo "Setting environment variables"
#Shared Variables
export AWS_REGION="ap-southeast-2"
export ACCOUNT_ID="$(aws sts get-caller-identity --query Account --output text)"
export TEMPOUT=$(mktemp) 

#Cluster Variables
export CLUSTER_NAME="eks-argo-scale"
export K8sversion="1.28"

# echo colour
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
CYAN=$(tput setaf 6)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)