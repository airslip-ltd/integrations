short_environment = "qa"
location = "UK South"
environment = "QA"
deployment_agent_group_id = "78963579-14c3-4ccc-b445-49f805ddaff2"

integration_custom_domain = "qa-integrations.airslip.com"
integration_apis = [
    {
        api_resource_suffix = "swan-retail"
        api_name = "Swan Retail Adapter API"
        api_path = "swan-retail"
        api_description = "Swan Retail Adapter API"
        hostname = "airslip-qa-adapter-swan-retail-app.azurewebsites.net",
        openapi_path = "https://airslip-qa-adapter-swan-retail-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "airslip"
        api_name = "Airslip Merchant Integration API"
        api_path = "airslip"
        api_description = "Airslip Merchant Integration API"
        hostname = "airslip-qa-merchant-integrations-api-app.azurewebsites.net",
        openapi_path = "https://airslip-qa-merchant-integrations-api-app.azurewebsites.net/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "api2cart"
        api_name = "Api2Cart Adapter API"
        api_path = "api2cart"
        api_description = "Api2Cart Adapter API"
        hostname = "airslip-qa-adapter-api2cart-processor-app.azurewebsites.net",
        openapi_path = "https://airslip-qa-adapter-api2cart-processor-app.azurewebsites.net/swagger.json",
        from_file = false
    }
]

application_custom_domain = "qa-app.airslip.com"
application_apis = [
    {
        api_resource_suffix = "analytics",
        api_name = "Analytics API",
        api_path = "analytics",
        api_description = "Analytics API",
        hostname = "airslip-qa-analytics-core-api-app.azurewebsites.net",
        openapi_path = "https://airslip-qa-analytics-core-api-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "customer-portal",
        api_name = "Customer Portal API",
        api_path = "customer_portal",
        api_description = "Customer Portal API",
        hostname = "airslip-qa-customer-portal-api-app.azurewebsites.net",
        openapi_path = "https://airslip-qa-customer-portal-api-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false
    }
]
