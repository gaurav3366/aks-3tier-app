resource "azurerm_kubernetes_cluster" "aks1" {
  name                = "${var.prefix}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.prefix}-dns-aks"

  default_node_pool {
    name       = "${var.prefix}np"
    node_count = var.node_count
    vm_size    = var.vm_size 
  }

  identity {
    type = var.identity
  }

  tags = {
    Environment = var.tags_aks
  }
}