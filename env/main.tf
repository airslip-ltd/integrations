terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.90.0"
    }
  }

  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}

locals {
  tags = {
    Environment = "${var.environment}"
  }
  app_id = "integrations"
  app_id_short = "intg"
  short_environment = "${var.short_environment}"
  location = "${var.location}"
  admin_group_id = "${var.admin_group_id}"
  certificate_name = "${var.certificate_name}"
  certificate_path = "${var.certificate_path}"
  certificate_password = "${var.certificate_password}"
  app_custom_domain = "${var.app_custom_domain}"
  api_publisher_name = var.api_publisher_name
  api_publisher_email = var.api_publisher_email
  api_sku_name = var.api_sku_name
  deployment_agent_group_id = var.deployment_agent_group_id
  apis = var.apis
  revision = replace(var.release_name, ".", "")
}

data "azurerm_client_config" "current" {}

module "api_management" {
  source = "./tf_modules/Airslip.Terraform.Modules/recipes/apim_multiple_apis"

  app_configuration = {
    app_id = local.app_id,
    app_id_short = local.app_id_short,
    short_environment = local.short_environment,
    location = local.location,
    tags = local.tags,
    api_publisher_name = local.api_publisher_name,
    api_publisher_email = local.api_publisher_email,
    api_sku_name = local.api_sku_name,
    api_custom_domain = local.app_custom_domain,
    certificate_name = local.certificate_name, 
    certificate_path = local.certificate_path, 
    certificate_password = local.certificate_password,
    tenant_id = data.azurerm_client_config.current.tenant_id,
    admin_group_id = local.admin_group_id,
    deployer_id = local.deployment_agent_group_id,
    revision = local.revision
  }

  apis = local.apis
}

