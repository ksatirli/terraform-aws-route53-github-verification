variable "github_organization" {
  type        = string
  description = "GitHub Organization identifier"
}

variable "zone_id" {
  type        = string
  description = "ID of the DNS Zone to store Records in"
}

variable "record_ttl" {
  type        = string
  description = "TTL for all DNS records"
  default     = 300
}

variable "ownership_record" {
  type        = string
  description = "Ownership TXT Record"
}

data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}

locals {
  zone_name = data.aws_route53_zone.zone.name // NOTE: trailing period is added by data source
}
