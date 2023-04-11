# vault_mount

variable "default_lease_ttl_seconds" {
  default     = 3600
  description = "Default lease duration for tokens and secrets in seconds."
  type        = number
}

variable "description" {
  default     = "PKI secret backend"
  description = "Human-friendly description of the mount."
  type        = string
}

variable "max_lease_ttl_seconds" {
  default     = 86400
  description = "Maximum possible lease duration for tokens and secrets in seconds."
  type        = number
}

variable "path" {
  default     = "pki"
  description = "Where the secret backend will be mounted."
  type        = string
}

variable "type" {
  default     = "pki"
  description = "Type of the backend, such as 'pki'."
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