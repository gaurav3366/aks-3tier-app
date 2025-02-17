terraform {
  backend "azurerm" {
    resource_group_name  = "aks-state"  
    storage_account_name = "aksstatestorage"                      
    container_name       = "tfstate"                       
    key                  = "terraform.tfstate" 
  }
}