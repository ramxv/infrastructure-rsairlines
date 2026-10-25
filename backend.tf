resource "azurerm_linux_web_app" "backend_tf" {
  name                = var.backend_name
  resource_group_name = azurerm_resource_group.rg_vuelos_tf.name
  service_plan_id     = azurerm_service_plan.as_vuelos_tf.id
  location            = azurerm_service_plan.as_vuelos_tf.location

  site_config {
    application_stack {
      python_version = "3.12"
    }

    cors {
      allowed_origins     = ["https://${azurerm_linux_web_app.frontend_tf.default_hostname}"]
      support_credentials = true
    }
  }
}
