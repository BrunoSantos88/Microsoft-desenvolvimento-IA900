resource "azurerm_machine_learning_workspace" "machineL" {
  name     = "machineL"
  location = "East US"
  resource_group_name = "machineL"
  friendly_name       = "Example Machine Learning Workspace"
  storage_account_id  = azurerm_storage_account.machineL.id
}

resource "azurerm_storage_account" "machineL" {
  name                     = "examplestorage"
  resource_group_name      = azurerm_resource_group.machineL.name
  location                 = azurerm_resource_group.machineL.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "machineL" {
  name     = "machineL"
  location = "eastus"
}