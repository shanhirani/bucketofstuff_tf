# Deployment Guide

The purpose of this guide is to provide quick deployment steps and basic instruction on how to deply infra in your AWS account.

## Pre-reqs
The following assumptions have been made; 
1. User profile set up in .aws/credentials and .aws/config 


### Usage
As always ensure that you have appropiate credentials/profiles configured in your aws config and in provider.tf

``` 
provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "project-terraform"
}
```
Using the following workflow of terraform init, validate, plan and apply ensuring you provide a tfvars as below should be enough to get you provisioning infrastructure.

```
...
terraform init
terraform validate
terraform plan -var-file=environment/development.tfvars
...
```
