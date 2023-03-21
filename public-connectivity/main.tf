data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "default" {
  name     = "${var.prefix}${var.environment}-rg"
  location = var.location
}

resource "random_pet" "prefix" {
  prefix = var.prefix
  length = 6
}

resource "random_integer" "suffix" {
  min = 100
  max = 999
}