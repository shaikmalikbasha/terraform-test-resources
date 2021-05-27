# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.52.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}

  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    "application-name" : "eisusda",
    "cost-center" : "2004-6025004",
    "description" : "eisusda-nonprod application",
    # "environment" : "dev",
    # "lob" : "MERCH TECH",
    # "location" : "eastus2",
    # "owner" : "kevin.bruss@kroger.com",
    # "spm-id" : "7525"
  }

  lifecycle {
    prevent_destroy = true
  }
}
