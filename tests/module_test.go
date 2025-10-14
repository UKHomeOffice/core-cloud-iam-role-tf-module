package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func Test<insert>Module(t *testing.T) {
    t.Parallel()

    terraformOptions := &terraform.Options{
        TerraformDir: "../",
        Vars: map[string]interface{}{
            <Enter Resource parameters and values here>
            "tags": map[string]interface{}{
                "environment-type": "xxx",
                "cost-centre": "xxx",
                "account-code": "xxx",
                "portfolio-id": "xxx",
                "project-id": "xxx",
                "service-id": "xxx",
                "owner-business" = "xxx",
                "budget-holder" = "xxx"
            },
        },
    }

    // defers the running of this until the end
    defer terraform.Destroy(t, terraformOptions)
    terraform.InitAndApply(t, terraformOptions)

    resourceID := terraform.Output(t, terraformOptions, "resource_id")
    resourceARN := terraform.Output(t, terraformOptions, "resource_arn")

    assert.NotEmpty(t, resourceID, "resource ID should not be empty")
    assert.NotEmpty(t, resourceARN, "resource ARN should not be empty")
}
