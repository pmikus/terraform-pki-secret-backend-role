output "pki_secret_backend_role_backend" {
  value = vault_pki_secret_backend_role.this.backend
}

output "pki_secret_backend_role_id" {
  value = vault_pki_secret_backend_role.this.id
}

output "pki_secret_backend_role_key_usage" {
  value = vault_pki_secret_backend_role.this.key_usage
}

output "pki_secret_backend_role_max_ttl" {
  value = vault_pki_secret_backend_role.this.max_ttl
}

output "pki_secret_backend_role_name" {
  value = vault_pki_secret_backend_role.this.name
}

output "pki_secret_backend_role_not_before_duration" {
  value = vault_pki_secret_backend_role.this.not_before_duration
}

output "pki_secret_backend_role_ttl" {
  value = vault_pki_secret_backend_role.this.ttl
}