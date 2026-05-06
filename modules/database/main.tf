resource "azurerm_postgresql_flexible_server" "db" {
  name                   = "psql-demo-2510"
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = "adminuser"
  administrator_password = "Password1234!"
  sku_name               = "B_Standard_B1ms"
  version                = "13"
}