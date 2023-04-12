# vault_mount

#variable "mount_allowed_managed_keys" {
#  description = "(Optional)" #List of managed key registry entry names that the mount in question is allowed to access
#  type        = set(string)
#}

variable "mount_default_lease_ttl_seconds" {
  description = "(Optional)" #Default lease duration for tokens and secrets in seconds
  type        = number
}

variable "mount_description" {
  description = "(Optional)" #Human-friendly description of the mount
  type        = string
}

#variable "mount_external_entropy_access" {
#  description = "(Optional)" #Enable the secrets engine to access Vault's external entropy source
#  type        = bool
#}

#variable "mount_local" {
#  description = "(Optional)" #Local mount flag that can be explicitly set to true to enforce local mount in HA environment
#  type        = bool
#}

variable "mount_max_lease_ttl_seconds" {
  description = "(Optional)" #Maximum possible lease duration for tokens and secrets in seconds
  type        = number
}

#variable "mount_namespace" {
#  description = "(Optional)" #Target namespace. (requires Enterprise)
#  type        = string
#}

#variable "mount_options" {
#  description = "(Optional)" #Specifies mount type specific options that are passed to the backend
#  type        = map
#}

variable "mount_path" {
  description = "(Required)" #Where the secret backend will be mounted
  type        = string
}

variable "mount_type" {
  description = "(Required)" #Type of the backend, such as 'aws'
  type        = string
}

# vault_pki_secret_backend_role

variable "allow_ip_sans" {
  default     = true
  description = "Flag to allow IP SANs."
  type        = bool
}

variable "allowed_domains" {
  default     = ["service.consul"]
  description = "List of allowed domains for certificates."
  type        = list(string)
}

variable "allow_localhost" {
  default     = true
  description = "Flag to allow certificates for localhost."
  type        = bool
}

variable "allow_subdomains" {
  default     = true
  description = "Flag to allow certificates matching subdomains."
  type        = bool
}

variable "key_bits" {
  default     = 4096
  description = "The number of bits of generated keys."
  type        = number
}

variable "key_type" {
  default     = "ed25519"
  description = "The generated key type, choices: rsa, ec, ed25519, any."
  type        = string
}

variable "name" {
  default     = "consul"
  description = "The name to identify this role within the backend. Must be unique within the backend."
  type        = string
}

variable "ttl" {
  default     = 3600
  description = "The TTL, in seconds, for any certificate issued against this role."
  type        = number
}