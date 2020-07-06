resource "azurerm_policy_set_definition" "deploy_diag_loganalytics" {
  name                = "Deploy-Diag-LogAnalytics"
  policy_type         = "Custom"
  display_name        = "Deploy-Diag-LogAnalytics"
  description         = "This initiative configures application Azure resources to forward diagnostic logs and metrics to an Azure Log Analytics workspace."
  management_group_id = var.management_group_name
  depends_on = [
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
  policy_definitions = <<POLICYDEFINITIONS
[
  {
    "policyDefinitionReferenceId": "7236125568528343678",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-NIC",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "16237567380538299695",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AA",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "12685756144414362153",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PublicIP",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "2557958870151738256",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LoadBalancer",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "4538039732467449756",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-NetworkSecurityGroups",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "5161149613138249385",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-KeyVault",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "16623885990575636691",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CognitiveServices",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "14165180690437289514",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DLAnalytics",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "13371143819958730506",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DataLakeStore",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "2071678625413859115",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventHub",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "16343927162737995596",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-iotHub",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "5158551526259161161",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LogicAppsWF",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "3565767401079350483",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LogicAppsISE",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "8137866490937856070",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-RecoveryVault",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "12916195990937786417",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SearchServices",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "9087684938078686846",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ServiceBus",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "1436434173336656375",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLDBs",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "5057222585536622942",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLElasticPools",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "1432091505729419124",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-APIMgmt",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "18134267480412652992",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ApplicationGateway",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "8388389559870572478",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Batch",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "11192323136602097727",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MySQL",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "7568623331654212445",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PostgreSQL",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17748756007148882262",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CDNEndpoints",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17566721830488803368",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CosmosDB",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "15931864125238299472",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DataFactory",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "2952564532567566124",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Firewall",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "12523335183303523469",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PowerBIEmbedded",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17060547101037299375",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-StreamAnalytics",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "6702667909971191151",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ExpressRoute",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17715931723533988224",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ACI",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "524463144292725949",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ACR",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "10130212469996596913",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VirtualNetwork",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17249814480476613114",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VM",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "16803376314801817083",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VMSS",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "2031506689370542266",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VNetGW",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "15407192821715569861",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AKS",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17213255122979381246",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Website",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17165387524202107114",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AnalysisService",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "13426869199552741022",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventGridTopic",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "105879099833677357",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventGridSub",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "9850618825532501923",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-HDInsight",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "5865748922408110407",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-RedisCache",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "3593019545976924523",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Relay",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "13856581306682461017",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SignalR",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "12212520351949118745",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-TrafficManager",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "14904583669671807849",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-WebServerFarm",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "8550486177634190353",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLMI",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "11982436241091362267",
    "policyDefinitionId": "/providers/Microsoft.Management/managementGroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-TimeSeriesInsights",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  },
  {
    "policyDefinitionReferenceId": "17989626042683077847",
    "policyDefinitionId": "/providers/Microsoft.Management/managementgroups/ES-mawhi/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MlWorkspace",
    "parameters": {
      "logAnalytics": {
        "value": "[parameters('logAnalytics')]"
      }
    }
  }
]
POLICYDEFINITIONS
  parameters         = <<PARAMETERS
{
  "logAnalytics": {
    "type": "String",
    "metadata": {
      "displayName": "Log Analytics workspace",
      "description": "Select the Log Analytics workspace from dropdown list",
      "strongType": "omsWorkspace"
    }
  }
}
PARAMETERS
}

output "policysetdefinition_deploy_diag_loganalytics" {
  value = azurerm_policy_set_definition.deploy_diag_loganalytics
}
