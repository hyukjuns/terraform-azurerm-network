# Outputs of Subnet
output "subnet_id" {
  value       = azurerm_subnet.network.id
  description = "The subnet ID."
}
output "subnet_name" {
  value       = azurerm_subnet.network.name
  description = "The name of the subnet."
}
output "subnet_resource_group_name" {
  value       = azurerm_subnet.network.resource_group_name
  description = "The name of the resource group in which the subnet is created in."
}
output "subnet_virtual_network_name" {
  value       = azurerm_subnet.network.virtual_network_name
  description = "The name of the virtual network in which the subnet is created in."
}
output "subnet_address_prefixes" {
  value       = azurerm_subnet.network.address_prefixes
  description = "The address prefixes for the subnet."
}

# Outputs of Vnet
output "vnet_id" {
  value       = azurerm_virtual_network.network.id
  description = "The virtual NetworkConfiguration ID."
}
output "vnet_name" {
  value       = azurerm_virtual_network.network.name
  description = "The name of the virtual network."
}
output "vnet_resource_group_name" {
  value       = azurerm_virtual_network.network.resource_group_name
  description = "The name of the resource group in which to create the virtual network."
}
output "vnet_location" {
  value       = azurerm_virtual_network.network.location
  description = "The location/region where the virtual network is created."
}
output "vnet_address_space" {
  value       = azurerm_virtual_network.network.address_space
  description = "The list of address spaces used by the virtual network."
}
output "vnet_guid" {
  value       = azurerm_virtual_network.network.guid
  description = "The GUID of the virtual network."
}
output "vnet_subnet" {
  value       = azurerm_virtual_network.network.subnet
  description = "One or more subnet blocks as defined below."
}

