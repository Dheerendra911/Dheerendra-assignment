terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name  = "dk_rg"
  #   storage_account_name = "patelstorage"
  #   container_name       = "dkcont"
  #   key                  = "terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
  subscription_id = "872d3065-2e7c-4fb2-a8a9-900bd99bf26b"
}
