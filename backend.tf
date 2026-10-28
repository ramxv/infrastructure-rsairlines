resource "azurerm_linux_web_app" "backend_tf" {
  name                = var.backend_name
  resource_group_name = azurerm_resource_group.rg_hackathon_tf.name
  service_plan_id     = azurerm_service_plan.as_hackathon_tf.id
  location            = azurerm_service_plan.as_hackathon_tf.location

  site_config {
    application_stack {
      dotnet_version = "10.0"
    }

    cors {
      allowed_origins     = ["https://${azurerm_linux_web_app.frontend_tf.default_hostname}"]
      support_credentials = true
    }
  }
}
