resource "azurerm_virtual_network" "vnet1" {
  name                = "az104-06-vnet01"
  address_space       = ["10.60.0.0/22"]
 location                 = azurerm_resource_group.machineL.location
  resource_group_name      = azurerm_resource_group.machineL.name
}

resource "azurerm_subnet" "mlsubnet" {
  name                 = "subnet0"
   resource_group_name = azurerm_resource_group.machineL.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.60.0.0/24"]
}

resource "azurerm_network_interface" "mlnetwork" {
  name                = "example-nic"
  location                 = azurerm_resource_group.machineL.location
  resource_group_name      = azurerm_resource_group.machineL.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mlsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}