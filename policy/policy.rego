package terraform.policy

deny[msg] if {
  resource := input.resource_changes[_]
  resource.type == "azurerm_storage_account"
  not resource.change.after.https_traffic_only_enabled
  msg := "Storage must enable secure transfer"
}