provider "azurerm" {
  features {}
}

resource "azurerm_cognitive_services_account" "example" {
  name                = "example-cogsvc"
  location            = "eastus"
  resource_group_name = "example-resource-group"
  kind                = "CognitiveServices"
  sku {
    name = "S0"
  }
  identity {
    type = "SystemAssigned"
  }
}



