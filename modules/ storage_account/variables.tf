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

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
  default     = "mystorageaccount"
}

variable "subnet_id" {
  description = "The ID of the subnet for the Storage Account"
  type        = string
}
