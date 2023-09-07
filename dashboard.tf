resource "azurerm_portal_dashboard" "cost-dashboard" {
  name                = local.cost_dashbaord_name
  resource_group_name = azurerm_resource_group.cust_rg_name.name
  location            = azurerm_resource_group.cust_rg_name.location
  tags = local.default_tags
  dashboard_properties = <<DASH
{

	"lenses": {
		"0": {
			"order": 0,
			"parts": {
				"0": {
					"position": {
						"x": 0,
						"y": 0,
						"colSpan": 7,
						"rowSpan": 3
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "The blades are added via each Subscriptions' Cost analysis view\n\nThe imports bring each blade as they are at the moment added. If there are changes to budgets, they may not be updated to the dashboard view. Instead the view needs to be pinned again to the dashboard.",
								"title": "Subscription cost dashboard",
								"subtitle": "In development",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"1": {
					"position": {
						"x": 0,
						"y": 3,
						"colSpan": 18,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "LZ core component",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"2": {
					"position": {
						"x": 0,
						"y": 4,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/482156be-7cec-4e68-bba0-560d61fb5dca"
							},
							{
								"name": "scopeName",
								"value": "lt-connectivity"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/482156be-7cec-4e68-bba0-560d61fb5dca",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/482156be-7cec-4e68-bba0-560d61fb5dca/costByResource"
					}
				},
				"3": {
					"position": {
						"x": 6,
						"y": 4,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/6459b2ed-afeb-4b84-a5ef-55dad1fe83ce"
							},
							{
								"name": "scopeName",
								"value": "lt-management"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/6459b2ed-afeb-4b84-a5ef-55dad1fe83ce",
									"kpis": [{
											"type": "Budget",
											"id": "/subscriptions/6459b2ed-afeb-4b84-a5ef-55dad1fe83ce/providers/Microsoft.Consumption/budgets/lt-management-Budget",
											"enabled": true,
											"extendedProperties": {
												"name": "lt-management-Budget",
												"amount": 2300,
												"timeGrain": "Monthly",
												"type": "6459b2ed-afeb-4b84-a5ef-55dad1fe83ce"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/6459b2ed-afeb-4b84-a5ef-55dad1fe83ce/costByResource"
					}
				},
				"4": {
					"position": {
						"x": 12,
						"y": 4,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/a4cf7c0a-b683-4a42-bf9f-92a1c8e0693c"
							},
							{
								"name": "scopeName",
								"value": "lt-identity"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/a4cf7c0a-b683-4a42-bf9f-92a1c8e0693c",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/a4cf7c0a-b683-4a42-bf9f-92a1c8e0693c/costByResource"
					}
				},
				"5": {
					"position": {
						"x": 0,
						"y": 8,
						"colSpan": 18,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "Data Platform",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"6": {
					"position": {
						"x": 0,
						"y": 9,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/1012adfe-2fb6-4d77-9d58-864bdcd77ba7"
							},
							{
								"name": "scopeName",
								"value": "lt-dataplatform-prod"
							},
							{
								"name": "view",
								"value": {
									"currency": null,
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/1012adfe-2fb6-4d77-9d58-864bdcd77ba7",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/1012adfe-2fb6-4d77-9d58-864bdcd77ba7/costByResource"
					}
				},
				"7": {
					"position": {
						"x": 6,
						"y": 9,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/5e6cfa3b-bff8-4f94-b3ca-142755de2be7"
							},
							{
								"name": "scopeName",
								"value": "lt-dataplatform-test"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/5e6cfa3b-bff8-4f94-b3ca-142755de2be7",
									"kpis": [{
											"type": "Budget",
											"id": "/subscriptions/5e6cfa3b-bff8-4f94-b3ca-142755de2be7/providers/Microsoft.Consumption/budgets/budget-lt-dataplatform-test",
											"enabled": true,
											"extendedProperties": {
												"name": "budget-lt-dataplatform-test",
												"amount": 1500,
												"timeGrain": "Monthly",
												"type": "5e6cfa3b-bff8-4f94-b3ca-142755de2be7"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/scope/%2Fsubscriptions%2F5e6cfa3b-bff8-4f94-b3ca-142755de2be7/open/CostAnalysis/openedBy/CostAnalysisTile/view~/%7B%22currency%22%3A%22EUR%22%2C%22dateRange%22%3A%22ThisMonth%22%2C%22query%22%3A%7B%22type%22%3A%22ActualCost%22%2C%22dataSet%22%3A%7B%22granularity%22%3A%22Daily%22%2C%22aggregation%22%3A%7B%22totalCost%22%3A%7B%22name%22%3A%22Cost%22%2C%22function%22%3A%22Sum%22%7D%2C%22totalCostUSD%22%3A%7B%22name%22%3A%22CostUSD%22%2C%22function%22%3A%22Sum%22%7D%7D%2C%22sorting%22%3A%5B%7B%22direction%22%3A%22ascending%22%2C%22name%22%3A%22UsageDate%22%7D%5D%7D%2C%22timeframe%22%3A%22None%22%7D%2C%22chart%22%3A%22Area%22%2C%22accumulated%22%3A%22true%22%2C%22pivots%22%3A%5B%7B%22type%22%3A%22Dimension%22%2C%22name%22%3A%22ServiceName%22%7D%2C%7B%22type%22%3A%22Dimension%22%2C%22name%22%3A%22ResourceLocation%22%7D%2C%7B%22type%22%3A%22Dimension%22%2C%22name%22%3A%22ResourceGroupName%22%7D%5D%2C%22scope%22%3A%22subscriptions%2F5e6cfa3b-bff8-4f94-b3ca-142755de2be7%22%2C%22kpis%22%3A%5B%7B%22type%22%3A%22Budget%22%2C%22id%22%3A%22COST_NAVIGATOR.BUDGET_OPTIONS.NONE%22%2C%22enabled%22%3Atrue%2C%22extendedProperties%22%3A%7B%22name%22%3A%22COST_NAVIGATOR.BUDGET_OPTIONS.NONE%22%7D%7D%2C%7B%22type%22%3A%22Forecast%22%2C%22enabled%22%3Atrue%7D%5D%2C%22displayName%22%3A%22AccumulatedCosts%22%7D"
					}
				},
				"8": {
					"position": {
						"x": 12,
						"y": 9,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/ce2b384f-f8e8-4b5f-adcb-2567ca51cf66"
							},
							{
								"name": "scopeName",
								"value": "lt-dataplatform-dev"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/ce2b384f-f8e8-4b5f-adcb-2567ca51cf66",
									"kpis": [{
											"type": "Budget",
											"id": "/subscriptions/ce2b384f-f8e8-4b5f-adcb-2567ca51cf66/providers/Microsoft.Consumption/budgets/budget-lt-dataplatform-dev",
											"enabled": true,
											"extendedProperties": {
												"name": "budget-lt-dataplatform-dev",
												"amount": 1150,
												"timeGrain": "Monthly",
												"type": "ce2b384f-f8e8-4b5f-adcb-2567ca51cf66"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/ce2b384f-f8e8-4b5f-adcb-2567ca51cf66/costByResource"
					}
				},
				"9": {
					"position": {
						"x": 0,
						"y": 13,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/6d78f327-5fa3-4ea8-840e-0e584e5060d3"
							},
							{
								"name": "scopeName",
								"value": "lt-dataplatform-iac"
							},
							{
								"name": "view",
								"value": {
									"currency": null,
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/1012adfe-2fb6-4d77-9d58-864bdcd77ba7",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/6d78f327-5fa3-4ea8-840e-0e584e5060d3/costByResource"
					}
				},
				"10": {
					"position": {
						"x": 6,
						"y": 13,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/115c5ebf-f842-4076-8419-44bd1bc98919"
							},
							{
								"name": "scopeName",
								"value": "lt-dataplatform-shared"
							},
							{
								"name": "view",
								"value": {
									"currency": null,
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/6d78f327-5fa3-4ea8-840e-0e584e5060d3",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/115c5ebf-f842-4076-8419-44bd1bc98919/costByResource"
					}
				},
				"11": {
					"position": {
						"x": 0,
						"y": 17,
						"colSpan": 18,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "Integrations",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"12": {
					"position": {
						"x": 0,
						"y": 18,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/33cdc831-dfbd-4294-9708-734dddaa1787"
							},
							{
								"name": "scopeName",
								"value": "lt-integration-dev"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/33cdc831-dfbd-4294-9708-734dddaa1787",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"13": {
					"position": {
						"x": 6,
						"y": 18,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/930ee75e-3dad-4800-8669-af9359e1edf7"
							},
							{
								"name": "scopeName",
								"value": "lt-integration-test"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/930ee75e-3dad-4800-8669-af9359e1edf7",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"14": {
					"position": {
						"x": 12,
						"y": 18,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/4d1793c8-c167-439e-ad53-429c2d08a06a"
							},
							{
								"name": "scopeName",
								"value": "lt-integration-prod"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/4d1793c8-c167-439e-ad53-429c2d08a06a",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"15": {
					"position": {
						"x": 0,
						"y": 22,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/a25b0d2f-88fa-418d-be6d-65362a380d6b"
							},
							{
								"name": "scopeName",
								"value": "lt-integration-shared"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/a25b0d2f-88fa-418d-be6d-65362a380d6b",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"16": {
					"position": {
						"x": 0,
						"y": 26,
						"colSpan": 18,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "Environmental Services",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"17": {
					"position": {
						"x": 0,
						"y": 27,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/3284127e-5e07-4ba6-97ed-2713920d632c"
							},
							{
								"name": "scopeName",
								"value": "lt-es-omega-tcs-test"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/3284127e-5e07-4ba6-97ed-2713920d632c",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"18": {
					"position": {
						"x": 6,
						"y": 27,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/e77ba64e-cc42-4081-8751-d886d604413a"
							},
							{
								"name": "scopeName",
								"value": "lt-es-omega-tcs-prod"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/e77ba64e-cc42-4081-8751-d886d604413a",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"19": {
					"position": {
						"x": 12,
						"y": 27,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/1505e9ac-aef1-4023-b531-2df90d469625"
							},
							{
								"name": "scopeName",
								"value": "lt-es-omega-golden-01"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/1505e9ac-aef1-4023-b531-2df90d469625",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"20": {
					"position": {
						"x": 0,
						"y": 31,
						"colSpan": 12,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "3MDM",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"21": {
					"position": {
						"x": 0,
						"y": 32,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/a3219ec6-b149-4a2f-82d4-2ac3d8ce40f3"
							},
							{
								"name": "scopeName",
								"value": "lt-3mdm-test"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/a3219ec6-b149-4a2f-82d4-2ac3d8ce40f3",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"22": {
					"position": {
						"x": 6,
						"y": 32,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/fd33f2ca-2c84-4b4f-9880-09e58c1366d5"
							},
							{
								"name": "scopeName",
								"value": "lt-3mdm-prod"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/fd33f2ca-2c84-4b4f-9880-09e58c1366d5",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costanalysis/openedBy/AzurePortal"
					}
				},
				"23": {
					"position": {
						"x": 0,
						"y": 36,
						"colSpan": 12,
						"rowSpan": 1
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/HubsExtension/PartType/MarkdownPart",
						"settings": {
							"content": {
								"content": "",
								"title": "HR",
								"subtitle": "",
								"markdownSource": 1,
								"markdownUri": ""
							}
						}
					}
				},
				"24": {
					"position": {
						"x": 0,
						"y": 37,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/d03ab42a-b653-408b-a015-83c5779fa5c9"
							},
							{
								"name": "scopeName",
								"value": "lt-hr-test"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/d03ab42a-b653-408b-a015-83c5779fa5c9",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/d03ab42a-b653-408b-a015-83c5779fa5c9/costByResource"
					}
				},
				"25": {
					"position": {
						"x": 6,
						"y": 37,
						"colSpan": 6,
						"rowSpan": 4
					},
					"metadata": {
						"inputs": [{
								"name": "scope",
								"value": "/subscriptions/2d9b30e1-62b5-4779-a67f-d7dabd8b5450"
							},
							{
								"name": "scopeName",
								"value": "lt-hr-prod"
							},
							{
								"name": "view",
								"value": {
									"currency": "EUR",
									"dateRange": "ThisMonth",
									"query": {
										"type": "ActualCost",
										"dataSet": {
											"granularity": "Daily",
											"aggregation": {
												"totalCost": {
													"name": "Cost",
													"function": "Sum"
												},
												"totalCostUSD": {
													"name": "CostUSD",
													"function": "Sum"
												}
											},
											"sorting": [{
												"direction": "ascending",
												"name": "UsageDate"
											}]
										},
										"timeframe": "None"
									},
									"chart": "Area",
									"accumulated": "true",
									"pivots": [{
											"type": "Dimension",
											"name": "ServiceName"
										},
										{
											"type": "Dimension",
											"name": "ResourceLocation"
										},
										{
											"type": "Dimension",
											"name": "ResourceGroupName"
										}
									],
									"scope": "subscriptions/2d9b30e1-62b5-4779-a67f-d7dabd8b5450",
									"kpis": [{
											"type": "Budget",
											"id": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE",
											"enabled": true,
											"extendedProperties": {
												"name": "COST_NAVIGATOR.BUDGET_OPTIONS.NONE"
											}
										},
										{
											"type": "Forecast",
											"enabled": true
										}
									],
									"displayName": "AccumulatedCosts"
								},
								"isOptional": true
							},
							{
								"name": "externalState",
								"isOptional": true
							}
						],
						"type": "Extension/Microsoft_Azure_CostManagement/PartType/CostAnalysisPinPart",
						"deepLink": "#@LTsky.onmicrosoft.com/resource/subscriptions/2d9b30e1-62b5-4779-a67f-d7dabd8b5450/costByResource"
					}
				},
				"26": {
					"position": {
						"x": 0,
						"y": 41,
						"colSpan": 2,
						"rowSpan": 2
					},
					"metadata": {
						"inputs": [],
						"type": "Extension/Microsoft_Azure_Expert/PartType/AzureAdvisorPart",
						"deepLink": "#view/Microsoft_Azure_CostManagement/Menu/~/costrecommendations/openedBy/AzurePortal"
					}
				}
			}
		}
	},
	"metadata": {
		"model": {
			"timeRange": {
				"value": {
					"relative": {
						"duration": 24,
						"timeUnit": 1
					}
				},
				"type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
			}
		}
	}
}
DASH
}
    