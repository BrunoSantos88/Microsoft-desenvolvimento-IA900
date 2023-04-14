data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "mlai900" {
  name     = "mlai900"
  location = "East US"
  tags = {
    "stage" = "IA900"
  }
}

resource "azurerm_application_insights" "mlai900" {
  name                = "mlai900ai"
  location            = azurerm_resource_group.mlai900.location
  resource_group_name = azurerm_resource_group.mlai900.name
  application_type    = "web"
}

resource "azurerm_key_vault" "mlai900" {
  name                = "mlai900kv"
  location            = azurerm_resource_group.mlai900.location
  resource_group_name = azurerm_resource_group.mlai900.name
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  purge_protection_enabled = true
}

resource "azurerm_storage_account" "mlai900" {
  name                     = "ai900azai"
  location                 = azurerm_resource_group.mlai900.location
  resource_group_name      = azurerm_resource_group.mlai900.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_machine_learning_workspace" "mlai900" {
  name                    = "mlai900-mlw"
  location                = azurerm_resource_group.mlai900.location
  resource_group_name     = azurerm_resource_group.mlai900.name
  application_insights_id = azurerm_application_insights.mlai900.id
  key_vault_id            = azurerm_key_vault.mlai900.id
  storage_account_id      = azurerm_storage_account.mlai900.id

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_virtual_network" "mlai900" {
  name                = "mlai900vnet"
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.mlai900.location
  resource_group_name = azurerm_resource_group.mlai900.name
}

resource "azurerm_subnet" "mlai900" {
  name                 = "mlai900-subnet"
  resource_group_name  = azurerm_resource_group.mlai900.name
  virtual_network_name = azurerm_virtual_network.mlai900.name
  address_prefixes     = ["10.1.0.0/24"]
}

resource "azurerm_machine_learning_compute_cluster" "mlai900" {
  name                          = "mlai900cluster"
  location                      = azurerm_resource_group.mlai900.location
  vm_size                       = "Standard_DS11_v2"
  machine_learning_workspace_id = azurerm_machine_learning_workspace.mlai900.id
  subnet_resource_id            = azurerm_subnet.mlai900.id

  scale_settings {
    min_node_count                       = 0
    max_node_count                       = 2
    scale_down_nodes_after_idle_duration = "PT30S" # 30 seconds
  }

  identity {
    type = "SystemAssigned"
  }
}