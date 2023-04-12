module "vault_pki" {
  source = "../"

  name = "consul"

  mount_default_lease_ttl_seconds = 3600
  mount_description               = "PKI secret backend"
  mount_max_lease_ttl_seconds     = 86400
  mount_path                      = "pki"
  mount_type                      = "pki"
}