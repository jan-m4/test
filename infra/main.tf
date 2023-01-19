resource "azurerm_resource_group" "rg_digimon_students_new" {
  name     = "rg_digimon_${var.icto}_students_new"
  location = var.location
  tags = {
    "owner"  = "digimon"
    "source" = "terraform"
    icto     = "dtit_21939"
  }
}

resource "azurerm_static_site" "static_web_app" {
  name                = "swa-datalake"
  resource_group_name = "rg_digimon_${var.icto}_students_new"
  location            = var.location
  sku_tier            = "Free"
  tags = {
    environment = "devtest"
    product     = "cloudintegrated"
    w5baseid    = "16418174480001"
  }
}

