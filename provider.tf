#terraform {
#  required_version = "1.8.0"
#  required_providers {
#    azurerm = {
#      source  = "hashicorp/azurerm"
#      version = "=3.99.0"
#    }
#  }
#}



terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
  cloud {
    organization = "testnico"
 
    workspaces {
      name = "myworkspace"
    }
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}


