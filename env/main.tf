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
  app_id = "api"
  app_id_short = "api"
  short_environment = "${var.short_environment}"
  location = "${var.location}"
  api_publisher_name = var.api_publisher_name
  api_publisher_email = var.api_publisher_email
  api_sku_name = var.api_sku_name
  deployment_agent_group_id = var.deployment_agent_group_id
  revision = replace(var.release_name, ".", "")

  integration_apis = var.integration_apis
  integration_custom_domain = var.integration_custom_domain
  integration_api_policy = "./variables/${var.short_environment}/policies/integration_api_policy.xml"

  application_apis = var.application_apis
  application_custom_domain = var.application_custom_domain
  application_api_policy = "./variables/${var.short_environment}/policies/application_api_policy.xml"
}

data "azurerm_client_config" "current" {}

module "ingredient_bowl" {
  source = "./tf_modules/Airslip.Terraform.Modules/modules/core/resource_group"

  tags              = local.tags
  app_id            = local.app_id
  short_environment = local.short_environment
  location          = local.location
}

module "api_management" {
  source = "./tf_modules/Airslip.Terraform.Modules/recipes/apim_multiple_apis"

  resource_group = {
    use_existing            = true,
    resource_group_name     = module.ingredient_bowl.name,
    resource_group_location = module.ingredient_bowl.location
  }

  app_configuration = {
    app_id = "${local.app_id}-integrations",
    app_id_short = "${local.app_id_short}int",
    short_environment = local.short_environment,
    location = local.location,
    tags = local.tags,
    api_publisher_name = local.api_publisher_name,
    api_publisher_email = local.api_publisher_email,
    api_sku_name = local.api_sku_name,
    api_custom_domain = local.integration_custom_domain,
    tenant_id = data.azurerm_client_config.current.tenant_id,
    deployer_id = local.deployment_agent_group_id,
    revision = local.revision,
    policy = local.integration_api_policy
  }

  apis = local.integration_apis
}

module "api_management_app" {
  source = "./tf_modules/Airslip.Terraform.Modules/recipes/apim_multiple_apis"

  resource_group = {
    use_existing            = true,
    resource_group_name     = module.ingredient_bowl.name,
    resource_group_location = module.ingredient_bowl.location
  }

  app_configuration = {
    app_id = "${local.app_id}-application",
    app_id_short = "${local.app_id_short}app",
    short_environment = local.short_environment,
    location = local.location,
    tags = local.tags,
    api_publisher_name = local.api_publisher_name,
    api_publisher_email = local.api_publisher_email,
    api_sku_name = local.api_sku_name,
    api_custom_domain = local.application_custom_domain,
    tenant_id = data.azurerm_client_config.current.tenant_id,
    deployer_id = local.deployment_agent_group_id,
    revision = local.revision,
    policy = local.application_api_policy
  }

  apis = local.application_apis
}


