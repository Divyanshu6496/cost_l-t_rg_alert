resource "azurerm_resource_group" "cust_rg_name" {
  name     = local.rg_name
  location = local.location
  tags = local.default_tags
}

# data "azurerm_resource_group" "example" {
#   name = local.rg_name
# }

resource "azurerm_monitor_action_group" "cust_acg" {
  name                = "acg-${local.management_sub_name}"
  resource_group_name = azurerm_resource_group.cust_rg_name.name
  short_name          = "acg-${local.management_sub_short_name}"
  webhook_receiver {
    name                    = "Tietoevry Managed Cloud ServiceNow"
    service_uri             = "https://Event_Management_Azure:KSRQYCYkWY4wKm2uSA@tieto.service-now.com/api/global/em/inbound_event?source=AzureCommonAlertSchema"
    use_common_alert_schema = true
  }
  email_receiver {
    name                    = "lt-costbudgetalert"
    email_address           = "petteri.eloranta@lassila-tikanoja.fi"
    use_common_alert_schema = true
  }
  email_receiver {
    name                    = "lt-costbudgetalert-alert"
    email_address           = "mikko.palsola@lassila-tikanoja.fi"
    use_common_alert_schema = true
  }
  email_receiver {
    name                    = "lt-costbudgetalert-te"
    email_address           = "pulin.gupta@tietoevry.com"
    use_common_alert_schema = true
  }
  depends_on = [ azurerm_resource_group.cust_rg_name ]
  tags = local.default_tags
}

# resource "azurerm_consumption_budget_subscription" "cust_acbsub" {
#   name              = "acbrg_${local.management_sub_name}"
#   subscription_id = data.azurerm_subscription.current.id

#   amount     = 2000
#   time_grain = "Monthly"

#   time_period {
#     start_date = "2023-06-01T00:00:00Z"
#     end_date   = "2024-06-01T00:00:00Z"
#   }

#   notification {
#     enabled        = true
#     threshold      = 90.0
#     operator       = "EqualTo"
#     threshold_type = "Forecasted"

#     contact_emails = [
#       "pulin.gupta@tietoevry.com"
#     ]

#     contact_groups = [
#       azurerm_monitor_action_group.cust_acg.id,
#     ]

#     contact_roles = [
#       "Owner",
#     ]
#   }

#   notification {
#     enabled   = true
#     threshold = 100.0
#     operator  = "GreaterThan"
#     threshold_type = "Actual"

#     contact_emails = [
#       "pulin.gupta@tietoevry.com"
#     ]
#     contact_groups = [
#       azurerm_monitor_action_group.cust_acg.id,
#     ]
#   }
#   depends_on = [ azurerm_resource_group.cust_rg_name ]
# }



data "azurerm_subscription" "current" {}