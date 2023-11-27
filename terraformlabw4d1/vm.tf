resource "azurerm_virtual_machine" "vm" {
  name = var.vm_name
  location = var.region
  resource_group_name = var.resource_group_name
  vm_size = "Standard_B1s"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "mydisk-ibai"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = "azureuser"
    admin_password = "Password1234"
  }

  os_profile_linux_config {
    disable_password_authentication = false
}

network_interface_ids = [
    azurerm_network_interface.nic.id
  ]


}