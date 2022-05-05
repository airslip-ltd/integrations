variable "short_environment" {
  description = "The prefix used for all resources"
}

variable "location" {
  description = "The Azure location where all resources should be created"
}

variable "environment" {
  description = "The environment name being deployed to"
}

variable "api_publisher_name" {
  description = "The publisher name used for the API"
  default = "Airslip Ltd"
}

variable "api_publisher_email" {
  description = "The publisher email used for the API"
  default = "support@airslip.com"
}

variable "api_sku_name" {
  description = "The sku used for the API Management Service"
  default = "Consumption_0"
}

variable "deployment_agent_group_id" {}
variable "release_name" {}

variable "integration_custom_domain" {}
variable "integration_apis" {}

variable "application_custom_domain" {}
variable "application_apis" {}

variable "external_custom_domain" {}
variable "external_apis" {}
