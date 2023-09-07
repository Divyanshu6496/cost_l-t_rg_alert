locals {
    rg_name = "rg-lt-sub-admin-01"
    management_sub_short_name = "lt-mgmt"
    dp_shared_acg_sub_id = "/subscriptions/115c5ebf-f842-4076-8419-44bd1bc98919"

    ## Subscriptions
    management_sub_id = "6459b2ed-afeb-4b84-a5ef-55dad1fe83ce"
    management_sub_name = "lt-management"
    ## Subscriptions dataplatform
    dp_dev_sub_id = "ce2b384f-f8e8-4b5f-adcb-2567ca51cf66"
    dp_dev_sub_name = "lt-dataplatform-dev"
    dp_shared_sub_id = "115c5ebf-f842-4076-8419-44bd1bc98919"
    dp_shared_sub_name = "lt-dataplatform-shared"
    dp_iac_sub_id = "6d78f327-5fa3-4ea8-840e-0e584e5060d3"
    dp_iac_sub_name = "lt-dataplatform-iac"
    dp_test_sub_id = "5e6cfa3b-bff8-4f94-b3ca-142755de2be7"
    dp_test_sub_name = "lt-dataplatform-test"
    dp_prod_sub_id = "1012adfe-2fb6-4d77-9d58-864bdcd77ba7"
    dp_prod_sub_name = "lt-dataplatform-prod"
    ## subscriptions Integration Environment
    int_dev_sub_id = "33cdc831-dfbd-4294-9708-734dddaa1787"
    int_dev_sub_name = "lt-integration-dev"
    int_shared_sub_id = "a25b0d2f-88fa-418d-be6d-65362a380d6b"
    int_shared_sub_name = "lt-integration-shared"
    int_test_sub_id = "930ee75e-3dad-4800-8669-af9359e1edf7"
    int_test_sub_name = "lt-integration-test"
    int_prod_sub_id = "4d1793c8-c167-439e-ad53-429c2d08a06a"
    int_prod_sub_name = "lt-integration-prod"
   
    dp_shared_sub_short_name = "ltdpshared"
    location = "westeurope"
    ##ACR Openings

    default_tags = {
        ServiceProvider = "tietoevry"
        ProductName     = "lz"
        ApplicationName = "lt-sub-admin"
        Owner           = "te"
        SLA             = "te"
        Guid            = "te"
        Environment     = "prod"
        IaC             = true
    }
    budgets = {
         lt_management = {
            subscription_id = local.management_sub_id
            subscription_name = local.management_sub_name
            amount = 2100
            time_grain = "Monthly"
            contact_emails = [
              
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        dp_shared = {
            subscription_id = local.dp_shared_sub_id
            subscription_name = local.dp_shared_sub_name
            amount = 150
            time_grain = "Monthly"
            contact_emails = [
              
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        dp_dev = {
            subscription_id = local.dp_dev_sub_id
            subscription_name = local.dp_dev_sub_name
            amount = 1200
            time_grain = "Monthly"
            contact_emails = [
                
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        dp_test = {
            subscription_id = local.dp_test_sub_id
            subscription_name = local.dp_test_sub_name
            amount = 1500
            time_grain = "Monthly"
            contact_emails = [
              
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        dp_prod = {
            subscription_id = local.dp_prod_sub_id
            subscription_name = local.dp_prod_sub_name
            amount = 2000
            time_grain = "Monthly"
            contact_emails = [
               
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        dp_iac = {
            subscription_id = local.dp_iac_sub_id
            subscription_name = local.dp_iac_sub_name
            amount = 50
            time_grain = "Monthly"
            contact_emails = [
               
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        int_shared = {
            subscription_id = local.int_shared_sub_id
            subscription_name = local.int_shared_sub_name
            amount = 50
            time_grain = "Monthly"
            contact_emails = [
              
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        int_dev = {
            subscription_id = local.int_dev_sub_id
            subscription_name = local.int_dev_sub_name
            amount = 1100
            time_grain = "Monthly"
            contact_emails = [
                
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        int_test = {
            subscription_id = local.int_test_sub_id
            subscription_name = local.int_test_sub_name
            amount = 900
            time_grain = "Monthly"
            contact_emails = [
              
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
        int_prod = {
            subscription_id = local.int_prod_sub_id
            subscription_name = local.int_prod_sub_name
            amount = 800
            time_grain = "Monthly"
            contact_emails = [
                "pulin.gupta@tietoevry.com"
            ]
            contact_groups = [
                azurerm_monitor_action_group.cust_acg.id,
            ]
            contact_roles = [
                "Owner",
            ]
        }
    }
    cost_dashbaord_name = "dashboard-cost-001"
    
}
 