variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "East US"  # Змінити на ваш вибір
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
  default     = "myAppServicePlan"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
  default     = "myAppService"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "myVNet"
}

variable "subnet_id" {
  description = "The ID of the subnet for the App Service"
  type        = string
}
