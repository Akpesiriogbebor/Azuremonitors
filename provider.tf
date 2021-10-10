terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.80.0"
    }
  }
}

provider "azurerm" {

 #subscription_id = "b8c277f7-258d-452c-b9ce-3b450a222e7b"
 # Configuration options
  features {}

}