# Configuración de proveedor y versión de Terraform
provider "azurerm" {
  features {}
  #skip_provider_registration = true
}

terraform {
  required_version = ">= 1.1.0"
}
