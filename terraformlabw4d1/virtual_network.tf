resource "azurerm_virtual_network" "vnet" {
  name                = var.v_net
  address_space       = ["10.0.0.0/16"]
  location            = var.region
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.subnet1.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}