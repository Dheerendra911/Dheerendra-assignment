nic_config = {
  nic1 = {
    subnet_name             = "subnet_frontend"
    virtual_network_name    = "todo_vnet"
    resource_group_name     = "todoappinfra-rg"
    public_ip_name          = "pip-frontend"
    nic_name                = "nic-frontend"
    network_interface_location = "northeurope"
  }
  nic2 = {
    subnet_name             = "subnet_backend"
    virtual_network_name    = "todo_vnet"
    resource_group_name     = "todoappinfra-rg"
    public_ip_name          = "pip-frontend"
    nic_name                = "nic-frontend"
    network_interface_location = "northeurope"
  }
  nic3 = {

  }
}