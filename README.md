## NOTE: This Terraform Module template repository should only be used for child modules, this is not intended for root modules (where the terraform is invoked).

This repository provides a generic template for Core Cloud Child modules. This example module includes the following checks and scans:
Terraform validate, Terraform fmt, Checkov scan, Sonarqube scan, Semantic versioning - MAJOR.MINOR.PATCH

## Usage

Copy and paste into your Terraform configuration, insert or update the
variables:

```
module <module_name> {
  source = "xxx"
  service_name = "my-service"
  environment = "dev"
}
```

Core Cloud Terraform Module READMEs should follow the below structure:

# TF Module Name

Description of the module and how to use this, including mandatory and optional parameters.

## Requirements


## Providers


## Modules

| Name | Source | Version |
|------|--------|---------|

Define if module block sourcing official Hashicorp Terraform module


## Resources


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|


## Outputs

