variable "cosmosdb_sql_functions" {
  description = <<EOT
Map of cosmosdb_sql_functions, attributes below
Required:
    - body
    - container_id
    - name
EOT

  type = map(object({
    body         = string
    container_id = string
    name         = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cosmosdb_sql_function's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: container_id
  #   source:    [from cosmosdb.ValidateContainerID] !ok
  # path: container_id
  #   source:    [from cosmosdb.ValidateContainerID] err != nil
  # path: body
  #   condition: length(value) > 0
  #   message:   must not be empty
}

