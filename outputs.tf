output "frontend-out" {
  value = "https://${azurerm_linux_web_app.frontend_tf.default_hostname}"
}

output "backend-out" {
  value = "https://${azurerm_linux_web_app.backend_tf.default_hostname}"
}
