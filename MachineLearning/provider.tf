provider "azurerm" {
  features {}
}


#configuração da sua conta
data "azurerm_client_config" "current" {}