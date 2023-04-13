resource "azurerm_machine_learning_compute_cluster" "test" {
  name                          = "example"
  location                      = azurerm_resource_group.example.location
  vm_priority                   = "LowPriority"
  vm_size                       = "Standard_DS2_v2"
  machine_learning_workspace_id = azurerm_machine_learning_workspace.example.id
  subnet_resource_id            = azurerm_subnet.example.id

  scale_settings {
    min_node_count                       = 0
    max_node_count                       = 2
    scale_down_nodes_after_idle_duration = "PT30S" # 30 seconds
  }

  identity {
    type = "SystemAssigned"
  }
}