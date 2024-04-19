resource "azurerm_resource_group" "myrg" {
  name     = "myrg"
  location = var.region
}


variable "sg_ports" {
  type    = list(number)
  default = [8200, 8201, 8300, 9200, 9500]
}

resource "azurerm_network_security_group" "mynsg" {
  name                = "mynsg"
  location            = var.region 
  resource_group_name = azurerm_resource_group.myrg.name

  dynamic "security_rule" {
    for_each = var.sg_ports
    content {
      name                       = "AllowPort_${security_rule.value}"
      priority                   = sum([1000, security_rule.key])
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = security_rule.value
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}


