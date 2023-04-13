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
| [vault_pki_secret_backend_role.this](https://registry.terraform.io/providers/hashicorp/vault/3.14.0/docs/resources/pki_secret_backend_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pki_secret_backend_role_allow_ip_sans"></a> [pki\_secret\_backend\_role\_allow\_ip\_sans](#input\_pki\_secret\_backend\_role\_allow\_ip\_sans) | (Optional) Flag to allow IP SANs. | `bool` | n/a | yes |
| <a name="input_pki_secret_backend_role_allow_localhost"></a> [pki\_secret\_backend\_role\_allow\_localhost](#input\_pki\_secret\_backend\_role\_allow\_localhost) | (Optional) Flag to allow certificates for localhost. | `bool` | n/a | yes |
| <a name="input_pki_secret_backend_role_allow_subdomains"></a> [pki\_secret\_backend\_role\_allow\_subdomains](#input\_pki\_secret\_backend\_role\_allow\_subdomains) | (Optional) Flag to allow certificates matching subdomains. | `bool` | n/a | yes |
| <a name="input_pki_secret_backend_role_allowed_domains"></a> [pki\_secret\_backend\_role\_allowed\_domains](#input\_pki\_secret\_backend\_role\_allowed\_domains) | (Optional) The domains of the role. | `list` | n/a | yes |
| <a name="input_pki_secret_backend_role_backend"></a> [pki\_secret\_backend\_role\_backend](#input\_pki\_secret\_backend\_role\_backend) | (Required) The path of the PKI secret backend the resource belongs to. | `string` | n/a | yes |
| <a name="input_pki_secret_backend_role_key_bits"></a> [pki\_secret\_backend\_role\_key\_bits](#input\_pki\_secret\_backend\_role\_key\_bits) | (Optional) The number of bits of generated keys. | `number` | n/a | yes |
| <a name="input_pki_secret_backend_role_key_type"></a> [pki\_secret\_backend\_role\_key\_type](#input\_pki\_secret\_backend\_role\_key\_type) | (Optional) The generated key type. | `string` | n/a | yes |
| <a name="input_pki_secret_backend_role_name"></a> [pki\_secret\_backend\_role\_name](#input\_pki\_secret\_backend\_role\_name) | (Required) Unique name for the role. | `string` | n/a | yes |
| <a name="input_pki_secret_backend_role_ttl"></a> [pki\_secret\_backend\_role\_ttl](#input\_pki\_secret\_backend\_role\_ttl) | (Optional, integer) The TTL, in seconds, for any certificate issued against this role. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pki_secret_backend_role_backend"></a> [pki\_secret\_backend\_role\_backend](#output\_pki\_secret\_backend\_role\_backend) | n/a |
| <a name="output_pki_secret_backend_role_id"></a> [pki\_secret\_backend\_role\_id](#output\_pki\_secret\_backend\_role\_id) | n/a |
| <a name="output_pki_secret_backend_role_key_usage"></a> [pki\_secret\_backend\_role\_key\_usage](#output\_pki\_secret\_backend\_role\_key\_usage) | n/a |
| <a name="output_pki_secret_backend_role_max_ttl"></a> [pki\_secret\_backend\_role\_max\_ttl](#output\_pki\_secret\_backend\_role\_max\_ttl) | n/a |
| <a name="output_pki_secret_backend_role_name"></a> [pki\_secret\_backend\_role\_name](#output\_pki\_secret\_backend\_role\_name) | n/a |
| <a name="output_pki_secret_backend_role_not_before_duration"></a> [pki\_secret\_backend\_role\_not\_before\_duration](#output\_pki\_secret\_backend\_role\_not\_before\_duration) | n/a |
| <a name="output_pki_secret_backend_role_ttl"></a> [pki\_secret\_backend\_role\_ttl](#output\_pki\_secret\_backend\_role\_ttl) | n/a |
<!-- END_TF_DOCS -->