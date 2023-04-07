# Configuración de proveedor y versión de Terraform
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.terraform_client_id
  client_secret   = var.terraform_client_secret
  tenant_id       = var.tenant_id
  #skip_provider_registration = true
}

terraform {
  required_version = ">= 1.1.0"
}
