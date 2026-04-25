variable "virtual_network_name" {
    value = azurerm_virtual_network.vn.name
}

variable "virtual_network_subnet" {
    value = azurerm_subnet.subnet.name
}

variable "virtual_network_interface" {
    value = azurerm_network_interface.nic.name
}

variable "address_space" {
    value = azurerm_virtual_network.vn.address_space
}

variable "address_prefix" {
    value = azurerm_subnet.subnet.address_prefixes
}