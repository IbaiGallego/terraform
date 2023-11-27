resource "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
  location            = var.region
  account_kind        = "StorageV2"
  account_tier        = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
  min_tls_version           = "TLS1_2"
  tags = {
    Environment = "Dev"
  }
}