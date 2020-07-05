policydefinition_deploy_vhub_policyrule = <<POLICYRULE
{
  "if": {
    "allOf": [
      {
        "field": "type",
        "equals": "Microsoft.Resources/subscriptions"
      }
    ]
  },
  "then": {
    "effect": "deployIfNotExists",
    "details": {
      "type": "Microsoft.Network/virtualHubs",
      "name": "[parameters('vHubName')]",
      "deploymentScope": "Subscription",
      "existenceScope": "ResourceGroup",
      "ResourceGroupName": "[parameters('rgName')]",
      "roleDefinitionIds": [
        "/providers/Microsoft.Authorization/roleDefinitions/b24988ac-6180-42a0-ab88-20f7382dd24c"
      ],
      "deployment": {
        "location": "northeurope",
        "properties": {
          "mode": "incremental",
          "parameters": {
            "rgName": {
              "value": "[parameters('rgName')]"
            },
            "vwanname": {
              "value": "[parameters('vwanname')]"
            },
            "vHUB": {
              "value": "[parameters('vHUB')]"
            },
            "vpngw": {
              "value": "[parameters('vpngw')]"
            },
            "ergw": {
              "value": "[parameters('ergw')]"
            },
            "azfw": {
              "value": "[parameters('azfw')]"
            },
            "vHUBName": {
              "value": "[parameters('vHUBName')]"
            }
          },
          "template": {
            "$schema": "http://schema.management.azure.com/schemas/2018-05-01/subscriptionDeploymentTemplate.json",
            "contentVersion": "1.0.0.0",
            "parameters": {
              "vwanname": {
                "type": "string",
                "metadata": {
                  "description": "Name of the Virtual WAN"
                }
              },
              "vHUB": {
                "type": "object",
                "metadata": {
                  "description": "Object describing Virtual WAN vHUB"
                }
              },
              "vpngw": {
                "type": "object",
                "defaultValue": {},
                "metadata": {
                  "description": "Object describing VPN gateway"
                }
              },
              "ergw": {
                "type": "object",
                "defaultValue": {},
                "metadata": {
                  "description": "Object describing ExpressRoute gateway"
                }
              },
              "azfw": {
                "type": "object",
                "defaultValue": {},
                "metadata": {
                  "description": "Object describing the Azure Firewall in vHUB"
                }
              },
              "rgName": {
                "type": "String",
                "metadata": {
                  "displayName": "rgName",
                  "description": "Provide name for resource group."
                }
              },
              "vHUBName": {
                "type": "String",
                "metadata": {
                  "displayName": "vHUBName",
                  "description": "Name of the vHUB"
                }
              }
            },
            "variables": {
              "vwanresourceid": "[concat(subscription().id,'/resourceGroups/',parameters('rgName'),'/providers/Microsoft.Network/virtualWans/',parameters('vwanname'))]",
              "vwanhub": "[concat(subscription().id,'/resourceGroups/',parameters('rgName'),'/providers/Microsoft.Network/virtualHubs/',parameters('vHUBName'))]"
            },
            "resources": [
              {
                "type": "Microsoft.Resources/resourceGroups",
                "apiVersion": "2018-05-01",
                "name": "[parameters('rgName')]",
                "location": "[deployment().location]",
                "properties": {}
              },
              {
                "type": "Microsoft.Resources/deployments",
                "apiVersion": "2018-05-01",
                "name": "[concat('vHUBdeploy-',parameters('vHUB').location)]",
                "resourceGroup": "[parameters('rgName')]",
                "dependsOn": [
                  "[resourceId('Microsoft.Resources/resourceGroups/', parameters('rgName'))]"
                ],
                "properties": {
                  "mode": "Incremental",
                  "template": {
                    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "parameters": {},
                    "variables": {},
                    "resources": [
                      {
                        "type": "Microsoft.Network/virtualHubs",
                        "apiVersion": "2020-05-01",
                        "location": "[parameters('vHUB').location]",
                        "name": "[parameters('vHUBname')]",
                        "properties": {
                          "virtualWan": {
                            "id": "[variables('vwanresourceid')]"
                          },
                          "addressPrefix": "[parameters('vHUB').addressPrefix]",
                          "vpnGateway": "[if(not(empty(parameters('vHUB').vpnGateway)),parameters('vHUB').vpnGateway, json('null'))]"
                        }
                      }
                    ]
                  }
                }
              },
              {
                "type": "Microsoft.Resources/deployments",
                "apiVersion": "2018-05-01",
                "condition": "[greater(length(parameters('vpngw')),0)]",
                "resourceGroup": "[parameters('rgName')]",
                "dependsOn": [
                  "[concat('vHUBdeploy-',parameters('vHUB').location)]"
                ],
                "name": "[concat(parameters('vHUBName'),'-vpngw')]",
                "properties": {
                  "mode": "Incremental",
                  "template": {
                    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "parameters": {},
                    "variables": {},
                    "resources": [
                      {
                        "type": "Microsoft.Network/vpnGateways",
                        "apiVersion": "2019-09-01",
                        "location": "[parameters('vHUB').location]",
                        "name": "[parameters('vpngw').name]",
                        "properties": {
                          "virtualHub": {
                            "id": "[variables('vwanhub')]"
                          },
                          "bgpSettings": "[parameters('vpngw').bgpSettings]",
                          "vpnGatewayScaleUnit": "[parameters('vpngw').vpnGatewayScaleUnit]"
                        }
                      }
                    ]
                  }
                }
              },
              {
                "type": "Microsoft.Resources/deployments",
                "apiVersion": "2018-05-01",
                "condition": "[greater(length(parameters('ergw')),0)]",
                "resourceGroup": "[parameters('rgName')]",
                "dependsOn": [
                  "[concat('vHUBdeploy-',parameters('vHUB').location)]"
                ],
                "name": "[concat(parameters('vHUBName'),'-ergw')]",
                "properties": {
                  "mode": "Incremental",
                  "template": {
                    "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "parameters": {},
                    "variables": {},
                    "resources": [
                      {
                        "type": "Microsoft.Network/expressRouteGateways",
                        "apiVersion": "2019-09-01",
                        "location": "[parameters('vHUB').location]",
                        "name": "[parameters('ergw').name]",
                        "properties": {
                          "virtualHub": {
                            "id": "[variables('vwanhub')]"
                          },
                          "autoScaleConfiguration": "[parameters('ergw').autoScaleConfiguration]",
                          "expressRouteConnections": "[parameters('ergw').expressRouteConnections]"
                        }
                      }
                    ]
                  }
                }
              },
              {
                "type": "Microsoft.Resources/deployments",
                "apiVersion": "2018-05-01",
                "condition": "[greater(length(parameters('azfw')),0)]",
                "resourceGroup": "[parameters('rgName')]",
                "dependsOn": [
                  "[concat('vHUBdeploy-',parameters('vHUB').location)]"
                ],
                "name": "[concat(parameters('vHUBName'),'-azfw')]",
                "properties": {
                  "mode": "Incremental",
                  "template": {
                    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
                    "contentVersion": "1.0.0.0",
                    "parameters": {},
                    "resources": [
                      {
                        "apiVersion": "2019-09-01",
                        "type": "Microsoft.Network/azureFirewalls",
                        "name": "[parameters('azfw').name]",
                        "location": "[parameters('vHUB').location]",
                        "properties": {
                          "virtualHub": {
                            "id": "[variables('vwanhub')]"
                          },
                          "sku": {
                            "Name": "AZFW_Hub",
                            "Tier": "Standard"
                          },
                          "firewallPolicy": {
                            "id": "[if(not(empty(parameters('azfw').firewallPolicy.id)),parameters('azfw').firewallPolicy.id, json('null'))]"
                          }
                        }
                      }
                    ]
                  }
                }
              }
            ]
          }
        }
      }
    }
  }
}
POLICYRULE

policydefinition_deploy_vhub_parameters = <<PARAMETERS
{
  "vwanname": {
    "type": "String",
    "metadata": {
      "displayName": "vwanname",
      "description": "Name of the Virtual WAN"
    }
  },
  "vHubName": {
    "type": "String",
    "metadata": {
      "displayName": "vHubName",
      "description": "Name of the vHUB"
    },
    "defaultValue": ""
  },
  "vHUB": {
    "type": "Object",
    "metadata": {
      "displayName": "vHUB",
      "description": "Object describing Virtual WAN vHUB"
    }
  },
  "vpngw": {
    "type": "Object",
    "metadata": {
      "displayName": "vpngw",
      "description": "Object describing VPN gateway"
    },
    "defaultValue": {}
  },
  "ergw": {
    "type": "Object",
    "metadata": {
      "displayName": "ergw",
      "description": "Object describing ExpressRoute gateway"
    },
    "defaultValue": {}
  },
  "azfw": {
    "type": "Object",
    "metadata": {
      "displayName": "azfw",
      "description": "Object describing the Azure Firewall in vHUB"
    },
    "defaultValue": {}
  },
  "rgName": {
    "type": "String",
    "metadata": {
      "displayName": "rgName",
      "description": "Provide name for resource group."
    }
  }
}
PARAMETERS

