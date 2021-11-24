terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = " ~> 2.86.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

module "network" {
  source  = "app.terraform.io/cloocus-mspdevops/network/azurerm"
  version = "1.0.0"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  vnet_name             = var.vnet_name
  address_space         = var.vnet_address
  subnet_name           = var.subnet_name
  subnet_address_prefixes = var.subnet_address

  depends_on = [
    azurerm_resource_group.rg
  ]
}