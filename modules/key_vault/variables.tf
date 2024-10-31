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
  description = "The ID of the Azure tenant"
  type        = string
}

variable "object_id" {
  description = "The Object ID of the Azure AD principal"
  type        = string
}
