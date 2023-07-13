<!-- BEGIN_TF_DOCS -->
# terraform-azurerm-network
Azure Virtual Network Module<br>
Terraform Cloud Module Registry에 등록하여 관리 하는 VCS 입니다.
### Terraform Cloud Module Registry에 연결하기 위한 VCS Naming Convention
- ```terraform-<PROVIDER>-<MODULENAME>```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## 사용 예제
```
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "tf-rg"
  location = "koreacentral"
}

module "network" {
  source  = "<TFC_REGISTRY>"
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

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | list of vnet address | `list(any)` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | location | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | resource group name | `string` | n/a | yes |
| <a name="input_subnet_address_prefixes"></a> [subnet\_address\_prefixes](#input\_subnet\_address\_prefixes) | list of subnet address | `list(any)` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | subnet name | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | vnet name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_address_prefixes"></a> [subnet\_address\_prefixes](#output\_subnet\_address\_prefixes) | The address prefixes for the subnet. |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | The subnet ID. |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | The name of the subnet. |
| <a name="output_subnet_resource_group_name"></a> [subnet\_resource\_group\_name](#output\_subnet\_resource\_group\_name) | The name of the resource group in which the subnet is created in. |
| <a name="output_subnet_virtual_network_name"></a> [subnet\_virtual\_network\_name](#output\_subnet\_virtual\_network\_name) | The name of the virtual network in which the subnet is created in. |
| <a name="output_vnet_address_space"></a> [vnet\_address\_space](#output\_vnet\_address\_space) | The list of address spaces used by the virtual network. |
| <a name="output_vnet_guid"></a> [vnet\_guid](#output\_vnet\_guid) | The GUID of the virtual network. |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | The virtual NetworkConfiguration ID. |
| <a name="output_vnet_location"></a> [vnet\_location](#output\_vnet\_location) | The location/region where the virtual network is created. |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | The name of the virtual network. |
| <a name="output_vnet_resource_group_name"></a> [vnet\_resource\_group\_name](#output\_vnet\_resource\_group\_name) | The name of the resource group in which to create the virtual network. |
| <a name="output_vnet_subnet"></a> [vnet\_subnet](#output\_vnet\_subnet) | One or more subnet blocks as defined below. |
<!-- END_TF_DOCS -->