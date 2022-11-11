variable "resource_group_name" {
  type        = string
  default =  "rg"
}

variable "location" {
  type        = string
  default =  "eastus"
}

# variable "azurerm_databricks_workspace" {
#   type        = string
#   default =  "databricks-test"
# }

variable "sku" {
  type        = string
  default =  "standard"
}
