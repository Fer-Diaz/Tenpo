# Creación del cluster AKS
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  dns_prefix      = "tenpo-aks-cluster"
  kubernetes_version = "1.24.10"

  #node_resource_group = "${azurerm_resource_group.rg.name}-node"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    type            = "VirtualMachineScaleSets"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  depends_on = [
    azurerm_resource_group.rg
  ]
}