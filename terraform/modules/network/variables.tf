variable "virtual_network_name" {
    type = string
}

variable "virtual_network_subnet" {
    type = string
}

variable "virtual_network_interface" {
    type = string
}

variable "address_space" {
    type = list(string)
}

variable "address_prefix" {
    type = list(string)
}

variable "resource_group_name" {
    description = "resource group name"
    type = string
}

variable "location" {
    description = "location name"
    type = string
}