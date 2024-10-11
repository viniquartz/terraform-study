resource "azurerm_resource_group" "arg-santiago" {
  name     = "rg-${var.name_project}"
  location = var.location
}