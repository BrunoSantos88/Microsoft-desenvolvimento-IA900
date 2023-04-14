
resource "azurerm_cognitive_account" "labcognitive" {
  name                = "cognitiveAccont"
  location            = azurerm_resource_group.mlai900.location
  resource_group_name = azurerm_resource_group.mlai900.name
  kind                = "Face"

  sku_name = "S0"

  tags = {
    Acceptance = "Test"
  }
}