//VM
resource "azurerm_windows_virtual_machine" "windowsVirtualmachine" {
  name                 = var.vm_name  
  resource_group_name  = var.resource_group_name
  location             = var.location
  size                 = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  network_interface_ids = [azurerm_network_interface.networkInterfacecard.id]
  
  os_disk {
    caching             = var.vm_osdisk_caching
    storage_account_type = var.vm_osdisk_storageaccounttype
  }

  source_image_reference {
    publisher           = var.vm_publisher
    offer               = var.vm_offer
    sku                 = var.vm_sku
    version             = var.vm_version
  }
}


resource "azurerm_network_interface" "networkInterfacecard" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id =  var.public_ip_address_id
  }
}

resource "azurerm_monitor_diagnostic_setting" "diagnosticMonitor" {
  name                       = var.diagnostic_settings_name
  target_resource_id         = azurerm_windows_virtual_machine.windowsVirtualmachine.id
  log_analytics_workspace_id = var.loganalyticWorkspace_id
  
  enabled_log {
    category = var.log_category

  }
  metric {
    category = var.monitor_metrics_category
    enabled  = var.monitor_metrics_enabled
  }
}