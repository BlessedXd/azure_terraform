terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
}

# Виклик модулів
module "vnet" {
  source = "./modules/vnet"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage_account" {
  source              = "./modules/storage_account"
  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_name = var.storage_account_name
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.vnet.subnet_id
}

module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
}

module "sql_database" {
  source              = "./modules/sql_database"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = module.vnet.subnet_id
}

# Налаштування Backend для Terraform State
terraform {
  backend "azurerm" {
    resource_group_name  = var.resource_group_name  # Використовуйте змінну
    storage_account_name = var.storage_account_name  # Використовуйте змінну
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
