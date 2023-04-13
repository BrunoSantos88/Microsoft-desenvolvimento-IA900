provider "azurerm" {
  features {}
}

resource "azurerm_machine_learning_workspace" "example" {
  name                = "example-ml"
  location            = "eastus"
  resource_group_name = "example-resource-group"
  friendly_name       = "Example Machine Learning Workspace"
  storage_account_id  = azurerm_storage_account.example.id
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "eastus"
}