resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true
  min_tls_version          = "TLS1_2"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "sample-nodes"
  storage_account_name  = var.storage_account
  container_access_type = "private"
}
