terraform {
  backend "azurerm" {
    resource_group_name   = "module"
    storage_account_name  = "storageaccountmodul9daf"
    container_name        = "tfstate"
    key                   = "azdo.$(Release.DefinitionName).$(PROJECT.NAME)"  # e.g. Demo.tfstate, Univar.tfstate
  }
}