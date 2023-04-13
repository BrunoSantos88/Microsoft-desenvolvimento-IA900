resource "azurerm_resource_group" "cognitive" {
  name     = "cognitive"
  location = "East US"
}

resource "azurerm_cognitive_account" "labcognitive" {
  name                = "cognitiveAccont"
  location            = azurerm_resource_group.cognitive.location
  resource_group_name = azurerm_resource_group.cognitive.name
  kind                = "Face"

  sku_name = "S0"

  tags = {
    Acceptance = "Test"
  }
}



