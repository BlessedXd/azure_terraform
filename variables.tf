variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "kv_name" {
  description = "The name of the Key Vault"
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID for Azure"
  type        = string
}

variable "subscription_id" {
  description = "Subscription ID for Azure"
  type        = string
}

variable "client_id" {
  description = "Client ID for Azure Service Principal"
  type        = string
}

variable "client_secret" {
  description = "Client Secret for Azure Service Principal"
  type        = string
}