resource "azurerm_storage_account" "storage" {
  name                     = "deekshithastorage2510"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  https_traffic_only_enabled = true
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
