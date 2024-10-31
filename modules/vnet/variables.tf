variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "Canada East"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "myVNet"
}
