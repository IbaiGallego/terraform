resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.v_net
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.v_net
  address_prefixes     = ["10.0.3.0/24"]
}