terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
 
  version = "=2.0.0"
  subscription_id = "xxxxxxxxxxxxx"
  tenant_id = "2xxxxxxxxxxxx"
  features {}
}
