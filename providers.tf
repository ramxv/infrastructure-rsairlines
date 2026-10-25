# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 5.0.0"
    }
  }

  required_version = "=1.17.0"
}

provider "azurerm" {
  features {}
}

