output "kms_key" {
  value       = data.google_kms_crypto_key.symmetric_key.id
  description = "The ID of the symmetric crypto key for the workspace."
}

output "dns_zone" {
  value = {
    name   = data.google_dns_managed_zone.working_zone.name
    domain = data.google_dns_managed_zone.working_zone.dns_name
  }
  description = "The DNS zone bound to the workspace."
}
