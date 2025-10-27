run "test_required_tags_and_metadata" {
  command = plan
  variables {
    tags = {
      environment-type  = "test-env"
      cost-centre  = "cc123"
      account-code = "ac456"
      portfolio-id = "pf789"
      project-id   = "pj101"
      service-id   = "svc202"
      owner-business = "owner1"
      budget-holder = "holder2"
    }
    name = "test-role"
    path = "/service/"
    description = "Test IAM role"
    max_session_duration = 3600
    permissions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"
  }
  assert {
    condition     = length(module.iam_role.tags) == 8
    error_message = "Incorrect number of tags found."
  }
  assert {
    condition = jsonencode(module.iam_role.tags) == jsonencode({
      "environment-type" = "test-env",
      "cost-centre" = "cc123",
      "account-code" = "ac456",
      "portfolio-id" = "pf789",
      "project-id"   = "pj101",
      "service-id"   = "svc202",
      "owner-business" = "owner1",
      "budget-holder" = "holder2",
    })
    error_message = "Expected tags not found."
  }
}

run "test_resource_creation_toggle" {
  command = plan
  variables {
    create = false
    tags = {
      environment-type  = "test-env"
      cost-centre  = "cc123"
      account-code = "ac456"
      portfolio-id = "pf789"
      project-id   = "pj101"
      service-id   = "svc202"
      owner-business = "owner1"
      budget-holder = "holder2"
    }
  }
  assert {
    condition     = length(module.iam_role) == 0
    error_message = "Resources should not be created when create is false."
  }
}

run "test_iam_role_outputs" {
  command = plan
  variables {
    tags = {
      environment-type  = "test-env"
      cost-centre  = "cc123"
      account-code = "ac456"
      portfolio-id = "pf789"
      project-id   = "pj101"
      service-id   = "svc202"
      owner-business = "owner1"
      budget-holder = "holder2"
    }
  }
  assert {
    condition     = module.resource_id != ""
    error_message = "Output resource_id should not be empty."
  }
}
