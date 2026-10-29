resource "azurerm_resource_group" "rg_team07_tf" {
  name     = "rg-team07"
  location = "eastus"
}

resource "azurerm_service_plan" "as_team07_tf" {
  name                = "as-team07"
  resource_group_name = azurerm_resource_group.rg_team07_tf.name
  location            = "northcentralus"
  sku_name            = "B1"
  os_type             = "Linux"
}
