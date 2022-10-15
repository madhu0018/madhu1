resource "azurerm_resource_group" "madhu_qt" {
  name     = "madhu_qt"
  location = "East US"
}

resource "azurerm_storage_account" "firstsa1" {
  name                     = "firstsa1"
  resource_group_name      = "madhu_qt"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}