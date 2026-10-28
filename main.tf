resource "azurerm_resource_group" "rg_hackathon_tf" {
  name     = "rg-hackathon-airlines"
  location = "eastus"
}

resource "azurerm_service_plan" "as_hackathon_tf" {
  name                = "as-hackathon-airlines"
  resource_group_name = azurerm_resource_group.rg_hackathon_tf.name
  location            = "centralus"
  sku_name            = "B1"
  os_type             = "Linux"
}
