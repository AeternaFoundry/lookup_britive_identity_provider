output "identity_provider_lookup_id" {
  description = "Map of id values across all identity_provider_lookup, keyed the same as var.identity_provider_lookup"
  value       = { for k, v in data.britive_identity_provider.identity_provider_lookup : k => v.id }
}
output "identity_provider_lookup_name" {
  description = "Map of name values across all identity_provider_lookup, keyed the same as var.identity_provider_lookup"
  value       = { for k, v in data.britive_identity_provider.identity_provider_lookup : k => v.name }
}
output "identity_provider_lookup_type" {
  description = "Map of type values across all identity_provider_lookup, keyed the same as var.identity_provider_lookup"
  value       = { for k, v in data.britive_identity_provider.identity_provider_lookup : k => v.type }
}

