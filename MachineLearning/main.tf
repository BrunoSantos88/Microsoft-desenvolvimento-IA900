resource "azurerm_application_insights" "cognitiveia900" {
  name                = "cognitiveia900-ai"
  location            = azurerm_resource_group.machineL.location
  resource_group_name = azurerm_resource_group.machineL.name
  application_type    = "web"
}

resource "azurerm_key_vault" "cognitiveia900" {
  name                = "cognitiveia900keyvault"
  location            = azurerm_resource_group.machineL.location
  resource_group_name = azurerm_resource_group.machineL.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "premium"
}

resource "azurerm_storage_account" "cognitiveia900" {
  name                     = "cognitiveia900"
  location                 = azurerm_resource_group.machineL.location
  resource_group_name      = azurerm_resource_group.machineL.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_machine_learning_workspace" "cognitiveia900" {
  name                    = "cognitiveia900-workspace"
  location                = azurerm_resource_group.machineL.location
  resource_group_name     = azurerm_resource_group.machineL.name
  application_insights_id = azurerm_application_insights.cognitiveia900.id
  key_vault_id            = azurerm_key_vault.cognitiveia900.id
  storage_account_id      = azurerm_storage_account.cognitiveia900.id

  identity {
    type = "SystemAssigned"
  }
}