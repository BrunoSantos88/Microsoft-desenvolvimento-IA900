resource "azurerm_resource_group" "example" {
  name     = "cognitive"
  location = "East US"
}

resource "azurerm_cognitive_account" "LabCognitive" {
  name                = "cognitiveAccont"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Face"

  sku_name = "S0"

  tags = {
    Acceptance = "Test"
  }
}



