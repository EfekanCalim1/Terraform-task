resource "azurerm_resource_group" "main" {
  name = "terraform-rg"
  location = "uksouth"
}

resource "azurerm_virtual_network" "main" {
  name = "terraform-vn"
  address_space = [ "10.0.0.0/16" ]
  location = "azurerm_resource_group.main.location"
  resource_group_name = "azurerm_resource_group.main.name"
}

resource "azurerm_subnet" "main" {
  name = "terraform-sn"
  resource_group_name = "azure_resource_group.main.name"
  virtual_network_name = "azure_virtual_network.main.name"
  address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_virtual_machine_scale_set" "main" {
  name = "scaleset-1"
  location = "azurerm_resource_group.example.location"
  resource_group_name = "azurerm_resource_group.example.name"
}