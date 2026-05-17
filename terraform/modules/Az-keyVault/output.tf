//OUPUTS
output "key_vault_id" {
  description = "The ID of the created Key Vault"
  value       = azurerm_key_vault.keyVault.id
}

output "key_vault_uri" {
  description = "The URI of the created Key Vault"
  value       = azurerm_key_vault.keyVault.vault_uri
}

output "key_vault_name" {
  description = "The name of the created Key Vault"
  value       = azurerm_key_vault.keyVault.name
}