data "azurerm_resource_group" "example" {
  name     = "githubactions"
}

resource "azurerm_virtual_network" "example-1" {
  name                = "peternetwork1"
  resource_group_name = data.azurerm_resource_group.example.name
  address_space       = var.cidr_block
  location            = data.azurerm_resource_group.example.location
}