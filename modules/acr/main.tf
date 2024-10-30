resource "azurerm_container_registry" "example" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku {
    name = "Basic"
  }
}

resource "azurerm_role_assignment" "acr_role_assignment" {
  principal_id   = azurerm_app_service.example.identity[0].principal_id
  role_definition_name = "AcrPull"
  scope          = azurerm_container_registry.example.id
}
