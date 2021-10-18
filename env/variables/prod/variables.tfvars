short_environment = "prod"
location = "UK South"
environment = "Production"
certificate_name = "airslip-com-certificate"
app_custom_domain = "integrations.airslip.com"
admin_group_id = "4a965f57-8ca7-4af3-ab5c-b7384f6ed4c9"
deployment_agent_group_id = "78963579-14c3-4ccc-b445-49f805ddaff2"

apis = [
    {
        api_resource_suffix = "swan-retail"
        api_name = "Swan Retail Adapter API"
        api_path = "swan-retail"
        api_description = "Swan Retail Adapter API"
        hostname = "airslip-prod-adapter-swan-retail-app.azurewebsites.net",
        openapi_path = "https://airslip-prod-adapter-swan-retail-app.azurewebsites.net/swagger/v1/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "airslip"
        api_name = "Airslip Merchant Integration API"
        api_path = "airslip"
        api_description = "Airslip Merchant Integration API"
        hostname = "airslip-prod-integration-functions-api-app.azurewebsites.net",
        openapi_path = "https://airslip-prod-integration-functions-api-app.azurewebsites.net/swagger.json",
        from_file = false
    },
    {
        api_resource_suffix = "api2cart"
        api_name = "Api2Cart Adapter API"
        api_path = "api2cart"
        api_description = "Api2Cart Adapter API"
        hostname = "airslip-prod-adapter-api2cart-processor-app.azurewebsites.net",
        openapi_path = "https://airslip-prod-adapter-api2cart-processor-app.azurewebsites.net/swagger.json",
        from_file = false
    }
]