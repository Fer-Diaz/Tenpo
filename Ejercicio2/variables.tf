# Configuración de variables
variable "resource_group_name" {
  type        = string
  description = "Nombre del grupo de recursos"
}

variable "storage_account_name" {
  type        = string
  description = "Nombre de la cuenta de almacenamiento genérico"
}

variable "aks_cluster_name" {
  type        = string
  description = "Nombre del cluster AKS"
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
