//VARIABLES
variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "location" {
  description = "The location of the Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "sku_name" {
  description = "The SKU for the Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "The Azure Tenant ID"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "Number of days to retain soft deleted Key Vault items"
  type        = number
}

variable "purge_protection_enabled" {
  description = "Whether purge protection is enabled for the Key Vault"
  type        = bool
}


