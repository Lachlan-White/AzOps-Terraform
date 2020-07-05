resource "azurerm_policy_set_definition" "deploy_diag_loganalytics" {
  name                = "Deploy-Diag-LogAnalytics"
  policy_type         = "Custom"
  display_name        = "Deploy-Diag-LogAnalytics"
  description         = "This initiative configures application Azure resources to forward diagnostic logs and metrics to an Azure Log Analytics workspace."
  management_group_id = azurerm_management_group.es.name
  depends_on          = [
    azurerm_policy_definition.deploy_diagnostics_aa,
    azurerm_policy_definition.deploy_diagnostics_aci,
    azurerm_policy_definition.deploy_diagnostics_acr,
    azurerm_policy_definition.deploy_diagnostics_aks,
    azurerm_policy_definition.deploy_diagnostics_apimgmt,
    azurerm_policy_definition.deploy_diagnostics_analysisservice,
    azurerm_policy_definition.deploy_diagnostics_applicationgateway,
    azurerm_policy_definition.deploy_diagnostics_batch,
    azurerm_policy_definition.deploy_diagnostics_cdnendpoints,
    azurerm_policy_definition.deploy_diagnostics_cognitiveservices,
    azurerm_policy_definition.deploy_diagnostics_cosmosdb,
    azurerm_policy_definition.deploy_diagnostics_dlanalytics,
    azurerm_policy_definition.deploy_diagnostics_datafactory,
    azurerm_policy_definition.deploy_diagnostics_datalakestore,
    azurerm_policy_definition.deploy_diagnostics_eventgridsub,
    azurerm_policy_definition.deploy_diagnostics_eventgridtopic,
    azurerm_policy_definition.deploy_diagnostics_eventhub,
    azurerm_policy_definition.deploy_diagnostics_expressroute,
    azurerm_policy_definition.deploy_diagnostics_firewall,
    azurerm_policy_definition.deploy_diagnostics_hdinsight,
    azurerm_policy_definition.deploy_diagnostics_keyvault,
    azurerm_policy_definition.deploy_diagnostics_loadbalancer,
    azurerm_policy_definition.deploy_diagnostics_logicappsise,
    azurerm_policy_definition.deploy_diagnostics_logicappswf,
    azurerm_policy_definition.deploy_diagnostics_mlworkspace,
    azurerm_policy_definition.deploy_diagnostics_mysql,
    azurerm_policy_definition.deploy_diagnostics_nic,
    azurerm_policy_definition.deploy_diagnostics_networksecuritygroups,
    azurerm_policy_definition.deploy_diagnostics_postgresql,
    azurerm_policy_definition.deploy_diagnostics_powerbiembedded,
    azurerm_policy_definition.deploy_diagnostics_publicip,
    azurerm_policy_definition.deploy_diagnostics_recoveryvault,
    azurerm_policy_definition.deploy_diagnostics_rediscache,
    azurerm_policy_definition.deploy_diagnostics_relay,
    azurerm_policy_definition.deploy_diagnostics_sqldbs,
    azurerm_policy_definition.deploy_diagnostics_sqlelasticpools,
    azurerm_policy_definition.deploy_diagnostics_sqlmi,
    azurerm_policy_definition.deploy_diagnostics_searchservices,
    azurerm_policy_definition.deploy_diagnostics_servicebus,
    azurerm_policy_definition.deploy_diagnostics_signalr,
    azurerm_policy_definition.deploy_diagnostics_streamanalytics,
    azurerm_policy_definition.deploy_diagnostics_timeseriesinsights,
    azurerm_policy_definition.deploy_diagnostics_trafficmanager,
    azurerm_policy_definition.deploy_diagnostics_vm,
    azurerm_policy_definition.deploy_diagnostics_vmss,
    azurerm_policy_definition.deploy_diagnostics_vnetgw,
    azurerm_policy_definition.deploy_diagnostics_virtualnetwork,
    azurerm_policy_definition.deploy_diagnostics_webserverfarm,
    azurerm_policy_definition.deploy_diagnostics_website,
    azurerm_policy_definition.deploy_diagnostics_iothub,
  ]
  policy_definitions  = var.policysetdefinition_deploy_diag_loganalytics_policydefinitions
  parameters          = var.policysetdefinition_deploy_diag_loganalytics_parameters
}

variable "policysetdefinition_deploy_diag_loganalytics_policydefinitions" {
  type = string
}

variable "policysetdefinition_deploy_diag_loganalytics_parameters" {
  type    = string
  default = ""
}
