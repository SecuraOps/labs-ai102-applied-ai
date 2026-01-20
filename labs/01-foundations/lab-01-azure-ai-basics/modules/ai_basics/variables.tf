variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "cognitive_account_name" {
  description = "Cognitive Services account name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Optional tags"
  type        = map(string)
  default = {
    "Environment" = "Lab01"
    "Project"     = "AI102"
  }
}
