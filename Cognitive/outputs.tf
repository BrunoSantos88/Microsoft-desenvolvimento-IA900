output "endpoint" {
  value = azurerm_cognitive_account.labcognitive.endpoint
}

output "resource_group_name" {
  value = azurerm_resource_group.cognitive.name
}

output "azurerm_cognitive_account_name" {
  value = azurerm_cognitive_account.labcognitive.name
}

output "access_key" {
  value = azurerm_cognitive_services_account.labcognitive.access_key
}