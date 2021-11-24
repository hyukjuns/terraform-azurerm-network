# Required
variable "resource_group_name" {
  type        = string
  description = "resource group name"
}
variable "location" {
  type        = string
  description = "location"
}
variable "vnet_name" {
  type        = string
  description = "vnet name"
}
variable "address_space" {
  type        = list(any)
  description = "list of vnet address"
}
variable "subnet_name" {
  type        = string
  description = "subnet name"
}
variable "subnet_address_prefixes" {
  type        = list(any)
  description = "list of subnet address"
}