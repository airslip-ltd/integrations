short_environment = "qa"
location = "UK South"
environment = "QA"
certificate_name = "airslip-com-certificate"
app_custom_domain = "qa-integrations.airslip.com"
admin_group_id = "4a965f57-8ca7-4af3-ab5c-b7384f6ed4c9"
deployment_agent_group_id = "78963579-14c3-4ccc-b445-49f805ddaff2"

apis = [
    {
        api_resource_suffix = "swan-retail"
        api_name = "Swan Retail Adapter API"
        api_path = "swan-retail"
        api_description = "Swan Retail Adapter API"
        hostname = "airslip-qa-adapter-swan-retail-app.azurewebsites.net"
    }
]
