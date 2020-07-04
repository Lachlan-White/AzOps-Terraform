resource "azurerm_policy_definition" "deploy_la_config" {
  name                  = "Deploy-LA-Config"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-LA-Config"
  description           = "null"

  management_group_name = azurerm_management_group.<changeme>.name
  policy_rule           = var.policyDefinition_deploy_la_config_policyrule
  policy_parameters     = var.policyDefinition-deploy_la_config-parameters
}


variable "policyDefinition_deploy_la_config_policyrule" {
    type = string
}

variable "policyDefinition_deploy_la_config_parameters" {
    type    = string
    default = ""
}
