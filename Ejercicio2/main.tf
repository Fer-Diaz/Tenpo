# Configuración de proveedor y versión de Terraform
provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.1.0"
}
