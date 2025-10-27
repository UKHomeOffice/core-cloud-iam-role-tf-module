# The outputs.tf will contain the output definitions for your module. Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of your infrastructure defined by the module to other parts of your configuration.
# Eg https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs#output-vpc-and-load-balancer-information
# Example output block provided

output "role_id" {
  description = "The IAM role ID."
  value       = module.iam_role.role_id
}

output "role_arn" {
  description = "The IAM role ARN."
  value       = module.iam_role.role_arn
}

output "role_name" {
  description = "The IAM role name."
  value       = module.iam_role.role_name
}
