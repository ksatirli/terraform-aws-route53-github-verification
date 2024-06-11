variable "github_owner" {
  type        = string
  description = "GitHub Owner identifier"
}

variable "record_prefix" {
  type        = string
  description = "Prefix for TXT Record"
  default     = "_gh-"
}

variable "record_ttl" {
  type        = string
  description = "TTL for all DNS records"
  default     = 300
}

variable "validation_code" {
  type        = string
  description = "GitHub Domain Validation String"
}

variable "zone_id" {
  type        = string
  description = "ID of the DNS Zone to store Records in"
}
