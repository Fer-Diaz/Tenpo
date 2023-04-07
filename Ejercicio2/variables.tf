# Configuración de variables
variable "location" {
  type = string
  description = "Location for the resources"
  default = "South Central US"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
  default = "tenpo-ej2-ussc-rg"
}

variable "storage_account_name" {
  type        = string
  description = "Nombre de la cuenta de almacenamiento genérico - lowercase letters and numbers, and must be between 3 and 24 characters long"
  default = "tenpoej2usscsa"
}

variable "aks_cluster_name" {
  type        = string
  description = "Nombre del cluster AKS"
  default = "tenpo-ej2-ussc-aks"
}

variable "reader_principal_id" {
  type        = string
  description = "Id del usuario con acceso de lectura"
}

variable "admin_principal_id" {
  type        = string
  description = "Id del usuario con acceso administrador"
}

variable "client_id" {
  type = string
  description = "Client Id del service principal que AKS utilizara para comunicarse con otros recursos de Azure"
}

variable "client_secret" {
  type = string
  description = "Client secret del service principal que AKS utilizara para comunicarse con otros recursos de Azure"
}
