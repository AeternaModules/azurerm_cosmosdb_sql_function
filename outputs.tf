output "cosmosdb_sql_functions_id" {
  description = "Map of id values across all cosmosdb_sql_functions, keyed the same as var.cosmosdb_sql_functions"
  value       = { for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_sql_functions_body" {
  description = "Map of body values across all cosmosdb_sql_functions, keyed the same as var.cosmosdb_sql_functions"
  value       = { for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : k => v.body if v.body != null && length(v.body) > 0 }
}
output "cosmosdb_sql_functions_container_id" {
  description = "Map of container_id values across all cosmosdb_sql_functions, keyed the same as var.cosmosdb_sql_functions"
  value       = { for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : k => v.container_id if v.container_id != null && length(v.container_id) > 0 }
}
output "cosmosdb_sql_functions_name" {
  description = "Map of name values across all cosmosdb_sql_functions, keyed the same as var.cosmosdb_sql_functions"
  value       = { for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : k => v.name if v.name != null && length(v.name) > 0 }
}

