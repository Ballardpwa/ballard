kinterraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bc034694-3217-45b2-b28d-a2dad60af1c6"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "jenkinsstatepaul"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}


