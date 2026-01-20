output "resource_group_name" {
  value = module.ai_basics.resource_group_name
}

output "cognitive_account_name" {
  value = module.ai_basics.cognitive_account_name
}

output "endpoint" {
  value = module.ai_basics.endpoint
}

output "primary_key" {
  value     = module.ai_basics.primary_key
  sensitive = true
}
