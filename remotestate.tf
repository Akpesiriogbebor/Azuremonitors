terraform {
  backend "azurerm" {
    resource_group_name   = "$(backend_resource_group)"
    storage_account_name  = "$(backend_storage_account)"
    container_name        = "tfstate"
    key                   = "azdo.$(Release.DefinitionName).$(PROJECT.NAME)"  # e.g. Demo.tfstate, Univar.tfstate
  }
}