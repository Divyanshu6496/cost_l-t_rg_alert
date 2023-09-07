resource "azurerm_consumption_budget_subscription" "cust_acbsub_dp" {
for_each = local.budgets
  name            = "budget-${each.value.subscription_name}"
  subscription_id = "/subscriptions/${each.value.subscription_id}"
  amount     = each.value.amount
  time_grain = each.value.time_grain
  time_period {
    start_date = "2023-08-01T00:00:00Z"
    end_date   = "2024-08-01T00:00:00Z"
  }
  notification {
    enabled        = true
    threshold      = 90.0
    operator       = "GreaterThanOrEqualTo"
    threshold_type = "Forecasted"
    contact_emails = each.value.contact_emails
    contact_groups = each.value.contact_groups
    contact_roles = each.value.contact_roles
  }
  notification {
    enabled        = true
    threshold      = 100.0
    operator       = "GreaterThanOrEqualTo"
    threshold_type = "Actual"
    contact_emails = each.value.contact_emails
    contact_groups = each.value.contact_groups
    # contact_roles = local.budgets.dp_shared.contact_roles
  }
  depends_on = [azurerm_resource_group.cust_rg_name]
}
