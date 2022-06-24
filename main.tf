# Create the resource group
resource "azurerm_resource_group" "rg" {
  name = "terraform-app-service"
  location = "japaneast"
}

# Create the Linux App Service Plan
resource "azurerm_app_service_plan" "appserviceplan" {
  name = "terraform-app-service-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "web" {
  name = "terraform-web-app-service"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
}