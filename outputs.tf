output "cosmosdb_sql_functions" {
  description = "All cosmosdb_sql_function resources"
  value       = azurerm_cosmosdb_sql_function.cosmosdb_sql_functions
}
output "cosmosdb_sql_functions_body" {
  description = "List of body values across all cosmosdb_sql_functions"
  value       = [for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : v.body]
}
output "cosmosdb_sql_functions_container_id" {
  description = "List of container_id values across all cosmosdb_sql_functions"
  value       = [for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : v.container_id]
}
output "cosmosdb_sql_functions_name" {
  description = "List of name values across all cosmosdb_sql_functions"
  value       = [for k, v in azurerm_cosmosdb_sql_function.cosmosdb_sql_functions : v.name]
}

