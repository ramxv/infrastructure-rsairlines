resource "azurerm_static_web_app" "frontend_tf" {
  name                = var.frontend_name
  resource_group_name = azurerm_resource_group.rg_vuelos_tf.name
  location            = azurerm_service_plan.as_vuelos_tf.location
}
