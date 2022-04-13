short_environment = "dev"
location = "UK South"
environment = "Development"
deployment_agent_group_id = "78963579-14c3-4ccc-b445-49f805ddaff2"

integration_custom_domain = "dev-integrations.airslip.com"
integration_apis = [
    {
        api_resource_suffix = "swan-retail",
        api_name = "Swan Retail Adapter API",
        api_path = "swan-retail",
        api_description = "Swan Retail Adapter API",
        hostname = "airslip-dev-adapter-swan-retail-app.azurewebsites.net",
        openapi_path = "https://airslip-dev-adapter-swan-retail-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false,
        policy = "./variables/dev/integration_api_policy.xml"
    },
    {
        api_resource_suffix = "airslip",
        api_name = "Airslip Merchant Integration API",
        api_path = "airslip",
        api_description = "Airslip Merchant Integration API",
        hostname = "airslip-dev-merchant-integrations-api-app.azurewebsites.net",
        openapi_path = "https://airslip-dev-merchant-integrations-api-app.azurewebsites.net/swagger.json",
        from_file = false,
        policy = "./variables/dev/integration_api_policy.xml"
    },
    {
        api_resource_suffix = "api2cart",
        api_name = "Api2Cart Adapter API",
        api_path = "api2cart",
        api_description = "Api2Cart Adapter API",
        hostname = "airslip-dev-adapter-api2cart-processor-app.azurewebsites.net",
        openapi_path = "https://airslip-dev-adapter-api2cart-processor-app.azurewebsites.net/swagger.json",
        from_file = false,
        policy = "./variables/dev/integration_api_policy.xml"
    }
]

application_custom_domain = "dev-app.airslip.com"
application_apis = [
    {
        api_resource_suffix = "analytics",
        api_name = "Analytics API",
        api_path = "analytics",
        api_description = "Analytics API",
        hostname = "airslip-dev-analytics-core-api-app.azurewebsites.net",
        openapi_path = "https://airslip-dev-analytics-core-api-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false,
        policy = "./variables/dev/analytics_api_policy.xml"
    },
    {
        api_resource_suffix = "customer-portal",
        api_name = "Customer Portal API",
        api_path = "customer_portal",
        api_description = "Customer Portal API",
        hostname = "airslip-dev-customer-portal-api-app.azurewebsites.net",
        openapi_path = "https://airslip-dev-customer-portal-api-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false,
        policy = "./variables/dev/portal_api_policy.xml"
    }
]
