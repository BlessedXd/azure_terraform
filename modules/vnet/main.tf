resource "azurerm_virtual_network" "main" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "Canada Central"
  resource_group_name = "example-resources"
}
resource "azurerm_subnet" "main" {
  name                 = "example-subnet"
  resource_group_name  = "example-resources"
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

