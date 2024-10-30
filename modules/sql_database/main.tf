resource "azurerm_sql_server" "example" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password  = "your-password" # Змініть на безпечний метод для зберігання паролів
}

resource "azurerm_sql_database" "example" {
  name                = "myDatabase"
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.example.name
  requested_service_objective_name = "S0"
}

resource "azurerm_private_endpoint" "sql_private_endpoint" {
  name                = "sql-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet_id = var.subnet_id

  private_service_connection {
    name                           = "sql-connection"
    private_connection_resource_id = azurerm_sql_server.example.id
    is_manual_connection           = false
    subresource_names              = ["sqlServer"]
  }
}
