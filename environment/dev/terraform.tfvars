rg_config = {
  "dev-rg" = {
    resource_group_name     = "dev-rg"
    resource_group_location = "centralindia"
  }
  dev2-rg = {
    resource_group_name     = "dev2-rg"
    resource_group_location = "centralindia"

  }
}

vnet_config = {
  "dev-vnet" = {
    virtual_network_name     = "dev-vnet"
    address_space            = ["10.0.0.0/16"]
    resource_group_name      = "dev-rg"
    virtual_network_location = "centralindia"
  }
}

subnet_config = {
  "dev-subnet" = {
    subnet_name          = "dev-subnet"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

ip_config = {
  "pip1" = {
    public_ip_name          = "pip1"
    resource_group_name     = "dev-rg"
    resource_group_location = "centralindia"
  }
}

nic_config = {
  "nic1" = {
    nic_name                   = "nic1"
    resource_group_name        = "dev-rg"
    network_interface_location = "centralindia"
    subnet_name                = "dev-subnet"
    virtual_network_name       = "dev-vnet"
    public_ip_name             = "pip1"
  }
}

nsg_config = {
  "nsg1" = {
    nsg_name            = "nsg1"
    resource_group_name = "dev-rg"
    location            = "centralindia"
  }
}

nsg_nic_config = {
  "assoc1" = {
    nic_name            = "nic1"
    nsg_name            = "nsg1"
    resource_group_name = "dev-rg"
  }
}

vm_config = {
  "vm1" = {
    vm_name             = "vm1"
    resource_group_name = "dev-rg"
    location            = "centralindia"
    nic_name            = "nic1"
    vm_size             = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd1234!"
    publisher           = "Canonical"
    offer               = "UbuntuServer"
    sku                 = "18.04-LTS"
  }
}
