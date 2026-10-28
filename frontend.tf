resource "azurerm_linux_web_app" "frontend_tf" {
  name                = var.frontend_name
  resource_group_name = azurerm_resource_group.rg_hackathon_tf.name
  service_plan_id     = azurerm_service_plan.as_hackathon_tf.id
  location            = azurerm_service_plan.as_hackathon_tf.location

  site_config {}
}
