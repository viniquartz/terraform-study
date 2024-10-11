resource "azurerm_ssh_public_key" "example" {
  name                = "viniquartzsshkey"
  resource_group_name = var.resource_group_name
  location            = var.location
  public_key          = file("~/.ssh/id_ed25519.pub")
}

resource "azurerm_network_interface" "main" {
  count               = var.amount
  name                = "${var.vm_name}-${count.index}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.vm_name}-interal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  count                 = var.amount
  name                  = "${var.vm_name}-${count.index}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [element(azurerm_network_interface.main.*.id, count.index)] #[azurerm_network_interface.main.id]
  vm_size               = var.vm_size

  os_profile {
    admin_username = "azureuser"
    computer_name  = "hostname"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.vm_name}-${count.index}-os_disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    #disk_size_gb = var.disk_capacity
  }

  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      key_data = azurerm_ssh_public_key.example.public_key
      path     = "/home/azureuser/.ssh/authorized_keys"
    }
  }
}

# resource "azurerm_managed_disk" "disk-attach" {
#   count                = var.amount
#   name                 = "data_disk_${var.vm_name}-${count.index}"
#   location             = var.location
#   resource_group_name  = var.resource_group_name
#   storage_account_type = "Standard_LRS"
#   create_option        = "Empty"
#   disk_size_gb         = var.disk_capacity

#   disk_encryption_set_id = var.data_set
# }

# resource "azurerm_virtual_machine_data_disk_attachment" "disk-data" {
#   count              = var.amount
#   managed_disk_id    = element(azurerm_managed_disk.disk-attach.*.id, count.index)
#   virtual_machine_id = element(azurerm_virtual_machine.main.*.id, count.index)
#   lun                = "10"
#   caching            = "ReadWrite"
#   depends_on = [
#     azurerm_managed_disk.disk-attach
#   ]
# }
