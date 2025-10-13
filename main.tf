# The main.tf will contain the main set of configuration for your module. You can also create other configuration files and organize them however makes sense for your project.

locals {
  common_tags = {
    cost-centre      = var.cc_vars.cost_centre
    account-code     = var.cc_vars.account_code
    portfolio-id     = var.cc_vars.portfolio_id
    project-id       = var.cc_vars.project_id
    service-id       = var.cc_vars.service_id
    environment-type = var.cc_vars.environment_type
    owner-business   = var.cc_vars.owner_business
    budget-holder    = var.cc_vars.budget_holder
  }
}

module "<module_name>" {
  source  = "terraform-aws-modules/<required-module>"
  version = "<source-module-version>"

  tags = merge(local.common_tags)
}
