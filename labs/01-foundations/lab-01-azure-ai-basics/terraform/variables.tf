variable "resource_group_name" {
  type    = string
  default = "lab01-rg"
}

variable "cognitive_account_name" {
  type    = string
  default = "lab01-ai"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "tags" {
  type = map(string)
  default = {
    "Environment" = "Lab01"
    "Project"     = "AI102"
  }
}

variable "subscription_id" {
  type = string
}

