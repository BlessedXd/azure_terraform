resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier            = "Standard"
  account_replication_type = "LRS"
}

output "name" {
  value = azurerm_storage_account.example.name
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}
