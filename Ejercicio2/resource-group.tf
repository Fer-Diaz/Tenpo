# Creación del grupo de recursos
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "East US"
}

# Usuario/cuenta con acceso de lectura
resource "azurerm_role_assignment" "read-access" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Reader"
  principal_id         = var.reader_principal_id

  depends_on = [
    azurerm_resource_group.rg
  ]
}

# Usuario/cuenta con acceso de administrador
resource "azurerm_role_assignment" "admin-access" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Owner"
  principal_id         = var.admin_principal_id

  depends_on = [
    azurerm_resource_group.rg
  ]
}