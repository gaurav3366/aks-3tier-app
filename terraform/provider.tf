terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.16.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "032a4495-a06d-43f0-b345-38f559b389bf"
  client_id = "335db80b-580c-411e-a003-586076052c2c"
  client_secret = "7WB8Q~-J~OhABh150OGAw4Rgu-zFx3b9fV5oua2d"
  tenant_id = "a4fda937-f49e-4eac-bea6-a25993251270"
  features {
  }
}