<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.7 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.pki](https://registry.terraform.io/providers/hashicorp/vault/3.14.0/docs/resources/mount) | resource |
| [vault_pki_secret_backend_role.role](https://registry.terraform.io/providers/hashicorp/vault/3.14.0/docs/resources/pki_secret_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_ip_sans"></a> [allow\_ip\_sans](#input\_allow\_ip\_sans) | Flag to allow IP SANs. | `bool` | `true` | no |
| <a name="input_allow_localhost"></a> [allow\_localhost](#input\_allow\_localhost) | Flag to allow certificates for localhost. | `bool` | `true` | no |
| <a name="input_allow_subdomains"></a> [allow\_subdomains](#input\_allow\_subdomains) | Flag to allow certificates matching subdomains. | `bool` | `true` | no |
| <a name="input_allowed_domains"></a> [allowed\_domains](#input\_allowed\_domains) | List of allowed domains for certificates. | `list(string)` | <pre>[<br>  "service.consul"<br>]</pre> | no |
| <a name="input_default_lease_ttl_seconds"></a> [default\_lease\_ttl\_seconds](#input\_default\_lease\_ttl\_seconds) | Default lease duration for tokens and secrets in seconds. | `number` | `3600` | no |
| <a name="input_description"></a> [description](#input\_description) | Human-friendly description of the mount. | `string` | `"PKI secret backend"` | no |
| <a name="input_key_bits"></a> [key\_bits](#input\_key\_bits) | The number of bits of generated keys. | `number` | `4096` | no |
| <a name="input_key_type"></a> [key\_type](#input\_key\_type) | The generated key type, choices: rsa, ec, ed25519, any. | `string` | `"ed25519"` | no |
| <a name="input_max_lease_ttl_seconds"></a> [max\_lease\_ttl\_seconds](#input\_max\_lease\_ttl\_seconds) | Maximum possible lease duration for tokens and secrets in seconds. | `number` | `86400` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to identify this role within the backend. Must be unique within the backend. | `string` | `"consul"` | no |
| <a name="input_path"></a> [path](#input\_path) | Where the secret backend will be mounted. | `string` | `"pki"` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The TTL, in seconds, for any certificate issued against this role. | `number` | `3600` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the backend, such as 'pki'. | `string` | `"pki"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->