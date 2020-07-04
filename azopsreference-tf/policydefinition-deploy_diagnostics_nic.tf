resource "azurerm_policy_definition" "deploy_diagnostics_nic" {
  name                  = "Deploy-Diagnostics-NIC"
  policy_type           = "Custom"
  mode                  = "All"
  display_name          = "Deploy-Diagnostics-NIC"
  description           = "Apply diagnostic settings for Network Interfaces - Log Analytics"

  management_group_name = azurerm_management_group.<changeme>.name
  policy_rule           = var.policyDefinition_deploy_diagnostics_nic_policyrule
  policy_parameters     = var.policyDefinition-deploy_diagnostics_nic-parameters
}


variable "policyDefinition_deploy_diagnostics_nic_policyrule" {
    type = string
}

variable "policyDefinition_deploy_diagnostics_nic_parameters" {
    type    = string
    default = ""
}
