terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.66.0"
    }
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

module "Action_Group" {
  source = "./Module/ActionGroup"
  resource_group_name = "${var.resource_group_name}"
}

module "application_gateway" {
  source = "./Module/application_gateway"
  resource_group_name = "${var.resource_group_name}"
  scopes  = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Network/applicationGateways/rtrtyrtyrty"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"

}

module "application_services" {
  source = "./Module/application_service"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Web/sites/Testweb2009"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-DataFactory" {
  source = "./Module/Azure-DataFactory"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.DataFactory/factories/TestDataFac0021"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureFirewall" {
  source = "./Module/AzureFirewall"
  resource_group_name = "${var.resource_group_name}"
  scopes            = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Network/azureFirewalls/testfirewall"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureStorage" {
  source = "./Module/AzureStorage"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/teststroage1992"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-AzureFunction" {
  source = "./Module/AzureFunction"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourcegroups/TestRG/providers/Microsoft.Web/sites/testfunction1992"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
}

module "Azure-EventHub" {
  source = "./Module/EventHub"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/testeventhub1992"]
  actiongroupid = "${module.Action_Group.actiongroup-id}" 
}
module "ExpressRoute" {
  source = "./Module/ExpressRoute"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Network/expressRouteCircuits/testExpressRoute"]
  actiongroupid = "${module.Action_Group.actiongroup-id}" 
}

module "Azure-AzureKeyvault" {
  source = "./Module/AzureKeyvault"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.KeyVault/vaults/aslkjdflkjaslfkwlk"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
} 

module "Azure-API_Management" {
  source = "./Module/API_Management"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.ApiManagement/service/TestApiManagementooq"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-AzureMySQL" {
  source = "./Module/AzureMySQL"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.DBforMySQL/servers/testserver1002"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

 module "Azure-LogicApp" {
  source = "./Module/LogicApp"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourcegroups/TestRG/providers/Microsoft.Logic/workflows/Testlogic"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-MariaDB" {
  source = "./Module/MariaDB"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.DBforMariaDB/servers/test0012"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-RedisCache" {
  source = "./Module/RedisCache"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Cache/Redis/test1002"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-ServiceBus" {
  source = "./Module/ServiceBus"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/testnametest"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-SQL" {
  source = "./Module/SQL"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Sql/servers/test1002/databases/test"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "Azure-SQL_Managed_Instance" {
  source = "./Module/SQL_Managed_Instance"
  resource_group_name = "${var.resource_group_name}"
  scopes = ["/subscriptions/8435a856-66e7-4900-8698-4f2e69a9a53b/resourceGroups/TestRG/providers/Microsoft.Sql/managedInstances/test33554"]
  actiongroupid = "${module.Action_Group.actiongroup-id}"
  
}

module "LogAnalytics" {
  source = "./Module/LogAnalytics"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
}

#module "Azure-NetApp" {
#  source = "./Module/NetApp"
#  resource_group_name = "${azurerm_resource_group.resource_group.name}"
#  location            = "${var.location}"
#  
#}


