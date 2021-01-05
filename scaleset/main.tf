provider "azurerm" {
  features {}
}

module "uk-scaleset" {
  source = "./scaleset"
  environment = "production"
  location = "uksouth"
  timezone = "GMT Standard Time"
  outhours = 17 
  outmins = 0
  inhours = 9
  inmins = 0
}

module "india-scaleset" {
  source = "./scaleset"
  environment = "development"
  location = "eastasia"
  timezone = "Asia/Kolkata"
  outhours = 22 
  outmins = 30
  inhours = 2
  inmins = 30
}

module "france-scaleset" {
  source = "./scaleset"
  environment = "staging"
  location = "francecentral"
  timezone = ""
  outhours = 15 
  outmins = 0
  inhours = 10
  inmins = 0
}