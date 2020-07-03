policyDefinition-Deny-PublicEndpoint-Storage-policyrule = <<POLICYRULE
{
  "if": {
    "allof": [
      {
        "field": "type",
        "equals": "Microsoft.Storage/storageAccounts"
      },
      {
        "field": "Microsoft.Storage/storageAccounts/networkAcls.defaultAction",
        "notequals": "Deny"
      }
    ]
  },
  "then": {
    "effect": "Deny"
  }
}
POLICYRULE

