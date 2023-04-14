resource "azurerm_machine_learning_workspace" "machineL" {
  name                = "machineL-workspace"
  location            = azurerm_resource_group.machineL.location
  resource_group_name = azurerm_resource_group.machineL.name
}


resource "azurerm_machine_learning_compute_cluster" "machineL" {

  name     = "aml-cluster"
  location = azurerm_resource_group.machineL.location
  vm_priority                   = "LowPriority"
  vm_size                       = "STANDARD_NC8AS_T4_v3"
  machine_learning_workspace_id = azurerm_machine_learning_workspace.machineL.id
  subnet_resource_id            = azurerm_subnet.mlsubnet.id

  scale_settings {
    min_node_count                       = 0
    max_node_count                       = 3
    scale_down_nodes_after_idle_duration = "PT30S" # 30 seconds
  }

  identity {
    type = "SystemAssigned"
  }
}