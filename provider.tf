provider "azurerm" {
  features {}
  subscription_id = local.management_sub_id
}

# provider "azurerm" {
#   alias           = "dp_shared"
#   subscription_id = local.management_sub
#   features {}
# }