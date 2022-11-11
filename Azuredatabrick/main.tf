resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
module "DataBricks"  {
  depends_on = [
    azurerm_resource_group.example
  ]
  source              = "./modules/DataBricks"
  # name                = var.azurerm_databricks_workspace
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
}

 
