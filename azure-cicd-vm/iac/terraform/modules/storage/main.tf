resource "azurerm_storage_account" "blobsa" {
  name                = "santiago${var.name_project}"
  location            = var.location
  resource_group_name = var.resource_group_name

  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  access_tier              = "Hot"
  is_hns_enabled           = "true"
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "blob-1" {
  name                  = "content"
  storage_account_name  = azurerm_storage_account.blobsa.name
  container_access_type = "private"
}