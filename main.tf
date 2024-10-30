terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # Переконайтеся, що версія підходить
    }
  }

  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
}

# Виклик модулів
module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = var.resource_group_name
  location           = var.location
  vnet_name          = var.vnet_name
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = var.resource_group_name
  location           = var.location
  app_service_plan_name = var.app_service_plan_name
  app_service_name    = var.app_service_name
  vnet_name           = module.vnet.vnet_name
  subnet_id           = module.vnet.subnet_id
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = var.resource_group_name
  location           = var.location
  acr_name            = var.acr_name
}



module "sql_database" {
  source              = "./modules/sql_database"
  resource_group_name = var.resource_group_name
  location           = var.location
  sql_server_name     = var.sql_server_name
  vnet_name           = module.vnet.vnet_name
  subnet_id           = module.vnet.subnet_id
}

module "storage_account" {
  source              = "./modules/storage_account"
  resource_group_name = var.resource_group_name
  location           = var.location
  storage_account_name = var.storage_account_name
  vnet_name           = module.vnet.vnet_name
  subnet_id           = module.vnet.subnet_id
}

# Налаштування Backend для Terraform State
terraform {
  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = module.storage_account.name
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
