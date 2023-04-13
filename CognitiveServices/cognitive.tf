provider "azurerm" {
  features {}
}

resource "azurerm_cognitive_services_account" "example" {
  name                = "cogsvc"
  location            = "eastus"
  resource_group_name = "cogsvcserver"
  kind                = "CognitiveServices"
  sku {
    name = "S0"
  }
  identity {
    type = "SystemAssigned"
  }
}



