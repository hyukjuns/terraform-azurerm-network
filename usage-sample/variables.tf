variable "rg_name" {
    type = string
    description = "my rg name"
}
variable "location" {
    type = string
    description = "my location"
}
variable "vnet_name" {
    type = string
    description = "my vnet name"
}
variable "vnet_address" {
    type = list
    description = "my vnet address space"
}
variable "subnet_name" {
    type = string
    description = "my subnet name"
}
variable "subnet_address" {
    type = list
    description = "my subnet address"
}