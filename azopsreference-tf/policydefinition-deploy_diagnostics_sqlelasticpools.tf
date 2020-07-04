resource "azurerm_policy_definition" "deploy_diagnostics_sqlelasticpools" {
  name                  = "Deploy-Diagnostics-SQLElasticPools"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-SQLElasticPools"
  description           = "Apply diagnostic settings for SQL Elastic Pools - Log Analytics"

  management_group_name = azurerm_management_group.<changeme>.name
  policy_rule           = var.policyDefinition_deploy_diagnostics_sqlelasticpools_policyrule
  policy_parameters     = var.policyDefinition-deploy_diagnostics_sqlelasticpools-parameters
}


variable "policyDefinition_deploy_diagnostics_sqlelasticpools_policyrule" {
    type = string
}

variable "policyDefinition_deploy_diagnostics_sqlelasticpools_parameters" {
    type    = string
    default = ""
}
