resource "azurerm_resource_group" "rg_vuelos_tf" {
  provider = azurerm
  name     = "rg-vuelos"
  location = "eastus"
}

resource "azurerm_service_plan" "as_vuelos_tf" {
  provider            = azurerm
  name                = "as-vuelos"
  resource_group_name = azurerm_resource_group.rg_vuelos_tf.name
  location            = "northcentralus"
  sku_name            = "B1"
  os_type             = "Linux"
}
