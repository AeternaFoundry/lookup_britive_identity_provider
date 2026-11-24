data "britive_identity_provider" "identity_provider_lookup" {
  for_each = var.identity_provider_lookup

  name = each.value.name
}

