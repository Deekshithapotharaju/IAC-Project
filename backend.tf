terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "storageaccount2510"
    container_name       = "tfstate"
    key                  = "project.tfstate"
  }
}