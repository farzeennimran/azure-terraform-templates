
variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group where the Virtual Network and associated resources will be deployed."
}

variable "location" {
  type        = string
  description = "The Azure region where the Virtual Network and its associated resources will be deployed."
}

variable "vm_name" {
    type = string
    description = "The name of the Virtual Machine to be created and managed "
  
}


variable "admin_username" {
  type        = string
  description = "The username for the administrator account on the virtual machine."
}

variable "vm_size" {
  type        = string
  description = "The size of the virtual machine. Defines the CPU, memory, and storage capacity of the VM."
}

variable "vm_osdisk_caching" {
  type        = string
  description = "The caching mode for the OS disk of the virtual machine. Options include None, ReadOnly, or ReadWrite."
}

variable "vm_osdisk_storageaccounttype" {
  type        = string
  description = "The type of storage account for the OS disk. Options include Standard_LRS, Premium_LRS, and others."
}

variable "vm_publisher" {
  type        = string
  description = "The publisher of the operating system image to be used for the virtual machine ."
}

variable "vm_offer" {
  type        = string
  description = "The offer (edition) of the operating system image to be used for the virtual machine (e.g., UbuntuServer, WindowsServer)."
}

variable "vm_sku" {
  type        = string
  description = "The SKU of the operating system image, which represents the version or flavor of the offer ."
}

variable "vm_version" {
  type        = string
  description = "The version of the operating system image to be used for the virtual machine )."
}

variable "vm_ssh_key_username" {
  type = string
  description = "The username for the SSH key-based login to the virtual machine. This username will be used to access the VM via SSH with the provided public key."

  
}

variable "vm_ssh_key_publickey" {
  type = string
  description = "The public SSH key to be used for authenticating access to the virtual machine. This key should correspond to the private key used for SSH login."
  
}

# variable "nic_name" {
#     type = string
#     description = "The name of the Azure Network Interface Card (NIC) that will be created and attached to the virtual machine."
# }

variable "ip_configuration_name" {
    type = string
    description = "The name of the IP configuration associated with the Network Interface Card (NIC). This configuration defines the IP addressing for the NIC."
  
}
variable "subnet_id" {
    type = string
    description = "The ID of the subnet where the Network Interface Card (NIC) will be connected within the Virtual Network."
  
}
variable "private_ip_address_allocation" {
    type = string
     description = "The method used for allocating a private IP address to the Network Interface Card (NIC). Options are 'Static' or 'Dynamic'."
  
}
variable "public_ip_address_id" {
    type = string
     description = "The ID of the Public IP where the Network Interface Card (NIC) will be connected within the Virtual Network."
  
}

variable "loganalyticWorkspace_id" {
  description = "The id of the Log Analytics Workspace."
  type        = string
}




variable "diagnostic_settings_name" {
  type = string
  
}
variable "monitor_metrics_category" {
  type = string
}

variable "monitor_metrics_enabled" {
  type = string
  
}

variable "log_category" {
  type = string
  
}

