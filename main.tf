resource "azurerm_resource_group" "rg_rsairlines_tf" {
  name     = "rg-rsairlines"
  location = "eastus"
}

resource "azurerm_service_plan" "as_rsairlines_tf" {
  name                = "as-rsairlines"
  resource_group_name = azurerm_resource_group.rg_vuelos_tf.name
  location            = "northcentralus"
  sku_name            = "B1"
  os_type             = "Linux"
}
