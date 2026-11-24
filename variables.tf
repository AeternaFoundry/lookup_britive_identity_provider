variable "identity_provider_lookup" {
  description = <<EOT
Map of identity_provider_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_provider_lookup : (
        length(v.name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

