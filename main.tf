# The main.tf will contain the main set of configuration for your module. You can also create other configuration files and organize them however makes sense for your project.

locals {
  common_tags = {
    cost-centre      = var.cc_tags.cost_centre
    account-code     = var.cc_tags.account_code
    portfolio-id     = var.cc_tags.portfolio_id
    project-id       = var.cc_tags.project_id
    service-id       = var.cc_tags.service_id
    environment-type = var.cc_tags.environment_type
    owner-business   = var.cc_tags.owner_business
    budget-holder    = var.cc_tags.budget_holder
  }
}

module "<module_name>" {
  source  = "terraform-aws-modules/<required-module>"
  version = "<source-module-version>"

  tags = merge(local.common_tags)
}
