resource "azurerm_resource_group" "example" {
  #  count    = var.resource_group_name != "true" ? 1 : 0
  #  count    = var.location != "false" ? 1 : 0
   name     = var.resource_group_name
  location  = var.location
}
resource "azurerm_databricks_workspace" "example" {
  count               = var.azurerm_databricks_workspace_name != "false" ? 1 : 0
  name                = var.azurerm_databricks_workspace_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = var.sku
}

 
