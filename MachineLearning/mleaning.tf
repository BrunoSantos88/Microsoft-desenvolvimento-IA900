provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "eastus"
}

resource "azurerm_machine_learning_workspace" "example" {
  name                = "example-ml"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.example.name
}
