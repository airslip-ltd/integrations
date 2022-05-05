short_environment = "demo"
location = "UK South"
environment = "Demo"
deployment_agent_group_id = "78963579-14c3-4ccc-b445-49f805ddaff2"

integration_custom_domain = "demo-integrations.airslip.com"
integration_apis = [
    {
        api_resource_suffix = "airslip"
        api_name = "Airslip Merchant Integration API"
        api_path = "airslip"
        api_description = "Airslip Merchant Integration API"
        hostname = "airslip-demo-merchant-integrations-api-app.azurewebsites.net",
        openapi_path = "https://airslip-demo-merchant-integrations-api-app.azurewebsites.net/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "api2cart"
        api_name = "Api2Cart Adapter API"
        api_path = "api2cart"
        api_description = "Api2Cart Adapter API"
        hostname = "airslip-demo-adapter-api2cart-processor-app.azurewebsites.net",
        openapi_path = "https://airslip-demo-adapter-api2cart-processor-app.azurewebsites.net/swagger.json",
        from_file = false
    }
]

application_custom_domain = "demo-app.airslip.com"
application_apis = [
    {
        api_resource_suffix = "analytics",
        api_name = "Analytics API",
        api_path = "analytics",
        api_description = "Analytics API",
        hostname = "airslip-demo-analytics-core-api-app.azurewebsites.net",
        openapi_path = "https://airslip-demo-analytics-core-api-app.azurewebsites.net/swagger/2021.11/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "customer-portal",
        api_name = "Customer Portal API",
        api_path = "customer_portal",
        api_description = "Customer Portal API",
        hostname = "airslip-demo-customer-portal-api-app.azurewebsites.net",
        openapi_path = "https://airslip-demo-customer-portal-api-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false
    }
]

application_custom_domain = "demo-api.airslip.com"
application_apis = [
    {
        api_resource_suffix = "analytics",
        api_name = "Analytics API",
        api_path = "analytics",
        api_description = "Analytics API",
        hostname = "airslip-demo-analytics-core-api-app.azurewebsites.net",
        openapi_path = "https://airslip-demo-analytics-core-api-app.azurewebsites.net/swagger/2022.5/swagger.json",
        from_file = false
    }
]
