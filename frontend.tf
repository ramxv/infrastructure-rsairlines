resource "azurerm_linux_web_app" "frontend_tf" {
  name                = var.frontend_name
  resource_group_name = azurerm_resource_group.rg_team07_tf.name
  service_plan_id     = azurerm_service_plan.as_team07_tf.id
  location            = azurerm_service_plan.as_team07_tf.location

  site_config {
    application_stack {
      node_version = "24-lts"
    }
  }
}
