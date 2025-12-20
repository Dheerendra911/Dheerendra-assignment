resource "azurerm_public_ip" "dk_PIP" {
  for_each = var.ip_config
  name=each.value.public_ip_name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method = "static"
  sku = "standard"
}