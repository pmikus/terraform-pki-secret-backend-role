resource "vault_mount" "this" {
  #allowed_managed_keys     = var.mount_allowed_managed_keys
  default_lease_ttl_seconds = var.mount_default_lease_ttl_seconds
  description               = var.mount_description
  #external_entropy_access  = var.mount_external_entropy_access
  #local                    = var.mount_local
  max_lease_ttl_seconds = var.mount_max_lease_ttl_seconds
  #namespace                = var.mount_namespace
  #options                  = var.mount_options
  path = var.mount_path
  type = var.mount_type
}

resource "vault_pki_secret_backend_role" "this" {
  depends_on = [
    vault_mount.this
  ]
  allow_ip_sans    = var.allow_ip_sans
  allowed_domains  = var.allowed_domains
  allow_localhost  = var.allow_localhost
  allow_subdomains = var.allow_subdomains
  backend          = vault_mount.this.path
  key_bits         = var.key_bits
  key_type         = var.key_type
  name             = var.name
  ttl              = var.ttl
}

resource "vault_pki_secret_backend_root_cert" "this" {
  depends_on = [
    vault_mount.this
  ]
  backend              = vault_mount.this.path
  type                 = "internal"
  common_name          = "service.consul"
  ttl                  = "315360000"
  format               = "pem"
  private_key_format   = "der"
  key_bits             = var.key_bits
  key_type             = var.key_type
  exclude_cn_from_sans = true
  ou                   = "Razer"
  organization         = "Home"
}