# terraform-azurerm-network
# 환경준비
## OS
- MacOS or Linux or WSL2
## Registry
terraform cloud private repository
## Version & Provider
- Terraform( > 0.13.0)
- hashicorp/azurerm( > 2.60.0)
## 사용 예제
[usage-sample](./usage-sample)
```
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "tf-rg"
  location = "koreacentral"
}

module "network" {
  source  = "app.terraform.io/cloocus-mspdevops/network/azurerm"
  version = "x.x.x"
  resource_group_name   = azurerm_resource_group.rg.name
  location              = azurerm_resource_group.rg.location
  vnet_name             = "tf-vnet"
  address_space         = ["10.0.0.0/16"]
  subnet_name           = "tf-subnet"
  subnet_address_prefix = ["10.0.0.0/24"]

  depends_on = [
    azurerm_resource_group.rg
  ]
}
```
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