variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
}

variable "kv_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet for the Key Vault"
  type        = string
}
