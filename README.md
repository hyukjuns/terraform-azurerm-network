# terraform-azurerm-network
## Registry
terraform cloud private repository
## Provider
hashicorp/azurerm
## Usage-Sample
[usage-sample](./usage-sample)
## Inputs
### Required
```
resource_group_name (string)
location (string)
vnet_name (stirng)
address_space (list)
subnet_name (string)
subnet_address_prefixes (list)
```
### Optional
```
-
```
## Outputs
[details](./outputs.tf)
```
subnet_id
subnet_name
subnet_resource_group_name
subnet_virtual_network_name
subnet_address_prefixes
vnet_id
vnet_name
vnet_resource_group_name
vnet_location
vnet_address_space
vnet_guid
vnet_subnet
```
## Usage
```
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "West Europe"
}

module "network" {
  source                = "../../modules/network"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  vnet_name             = "tf-vnet"
  address_space         = ["10.0.0.0/16"]
  subnet_name           = "tf-subnet-01"
  subnet_address_prefix = ["10.0.0.0/24"]

  depends_on = [
    azurerm_resource_group.rg
  ]
}
```