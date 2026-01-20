output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "cognitive_account_name" {
  value = azurerm_cognitive_account.cognitive.name
}

output "endpoint" {
  value = azurerm_cognitive_account.cognitive.endpoint
}

output "primary_key" {
  value     = azurerm_cognitive_account.cognitive.primary_access_key
  sensitive = true
}
