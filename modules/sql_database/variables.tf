variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
  default     = "mySqlServer"
}

variable "subnet_id" {
  description = "The ID of the subnet for the SQL Database"
  type        = string
}
