# Terraform AWS
# Table of contents
1. [Introduction](#introduction)
3. [Prerequisites](#prerequisites)
4. [Deployment Guide](#deployment-guide)
7. [Release History](#release-history)
9. [Contributing](#contributing)
## Documentation Index
* [DEPLOYMENTGUIDE](docs/DEPLOYMENTGUIDE.md)
* [CHANGELOG.md](docs/CHANGELOG.md)
* [CONTRIBUTING.md](docs/CONTRIBUTING.md)
# Introduction
Please note that this NOT intended to be `production grade` or `best in class solution` and only a potential terraform kickstart or hiera/structure on how to get started with Terraform within AWS.

This solution will consume the following AWS resources when deployed with Terraform 13;

- ec2
- igw
- natgw
- routing
- s3
- securitygroups
- subnets
- vpc

## Scope
Essentially you'd being spinning up an EC2 instance along with its vpc, sg, natgw etc that will install ngix to run as a simple frontend.
Any additional configuration or resources will need to be acctioned by yourself as this is intended to be a simple kickstart.

## Tools In Use
Terraform: Infrastructure Deployment and Management
AWS: EC2 Compute Services

# Prerequisites
It is important to complete/get these prerequisites before the deployment:

* AWS credentials - In which account to deploy the infrastructure
* IP list/ranges for whitelisting traffic to/from EC2 Instance
* CIDR block for VPC

# Deployment Guide
[DEPLOYMENTGUIDE.md](docs/DEPLOYMENTGUIDE.md)

# Release History
[CHANGELOG.md](docs/CHANGELOG.md)

## Contributing
Improvements and suggestions are welcome, please refer to [CONTRIBUTING.md](docs/CONTRIBUTING.md) to get involved in future development.
