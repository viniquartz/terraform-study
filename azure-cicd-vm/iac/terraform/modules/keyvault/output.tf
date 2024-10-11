output "vault_id" {
  value = azurerm_key_vault.example.id
}

# output "secret_id" {
#   value = azurerm_key_vault_secret.example.id
# }

output "key_id" {
  value = azurerm_key_vault_key.key.id
}

output "data_set" {
  value = azurerm_disk_encryption_set.vmtest-enc-set.id
}