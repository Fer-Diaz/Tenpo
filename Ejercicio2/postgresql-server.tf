# Base de datos relacional
resource "azurerm_postgresql_server" "example" {
  name                = "example-db"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  version             = "11"
  administrator_login = "exampleadmin"
  administrator_login_password = "P@ssw0rd1234"
  sku_name            = "B_Gen5_1"

  ssl_enforcement_enabled = true


  depends_on = [
    azurerm_resource_group.rg
  ]
}