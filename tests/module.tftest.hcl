run "module_test_scenario_1_tags" {
  command = plan

  variables {
    <Enter Resource variables here>
    tags = {
      environment-type  = "xxx"
      cost-centre  = "xxx"
      account-code = "xxx"
      portfolio-id = "xxx"
      project-id   = "xxx"
      service-id   = "xxx"
      owner-business = "xxx"
      budget-holder = "xxx"
    }
  }


  assert {
    condition     = length(resource_name.this.tags) == 8
    error_message = "Incorrect number of tags found."
  }

  assert {
    condition = jsonencode(<resource_name.this.tags) == jsonencode({
      "environment-type" = "xxx",
      "cost-centre" = "xxx",
      "account-code" = "xxx",
      "portfolio-id" = "xxx",
      "project-id"   = "xxx",
      "service-id"   = "xxx",
      "owner-business" = "xxx",
      "budget-holder" = "xxx",
    })
    error_message = "Expected tags not found."
  }
}

