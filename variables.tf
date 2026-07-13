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
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_functions : (
        length(v.body) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

