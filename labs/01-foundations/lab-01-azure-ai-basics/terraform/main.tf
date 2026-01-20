module "ai_basics" {
  source = "../modules/ai_basics"

  resource_group_name      = var.resource_group_name
  cognitive_account_name   = var.cognitive_account_name
  location                 = var.location
  tags                     = var.tags
}