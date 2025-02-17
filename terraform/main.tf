resource "azurerm_resource_group" "rg1" {
  name     = var.rgname
  location = var.rglocation
}
module "aks" {
  source                 = "./modules/aks"
  prefix                 = var.prefix
  name                   = "${var.prefix}-aks"
  location               = azurerm_resource_group.rg1.location 
  resource_group_name    = azurerm_resource_group.rg1.name
  vm_size                = var.vm_size
  dns_prefix             = "${var.prefix}-dns"
  node_count             = var.node_count
  identity               = var.identity
  depends_on = [ azurerm_resource_group.rg1 ]
}