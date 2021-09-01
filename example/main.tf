provider "azurerm" {
  features {}
}

locals {
  application_full_name     = "Hello world"
  application_environment   = "dev"
  service_principal_purpose = "azdo"
}

module "azure_ad_sp" {
  source                    = "git::https://github.com/thomisza/tf-az-sp.git"
  application_full_name     = local.application_full_name
  application_environment   = local.application_environment
  service_principal_purpose = local.service_principal_purpose
}