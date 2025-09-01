terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend"
    storage_account_name = "backendstate08"
    container_name       = "terraformstate"
    key                  = "dev.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "088412f5-0303-4050-9e53-2b794c57b126"
}
