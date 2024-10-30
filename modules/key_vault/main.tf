resource "azurerm_key_vault" "example" {
  name                = var.kv_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
}

resource "azurerm_key_vault_access_policy" "example" {
  key_vault_id = azurerm_key_vault.example.id
  tenant_id    = var.tenant_id
  object_id    = azurerm_app_service.example.identity[0].principal_id
  key_permissions = ["get", "list"]
  secret_permissions = ["get", "list"]
}
