# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone
data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}

# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
resource "aws_route53_record" "main" {
  zone_id = var.zone_id

  # assemble appropriate subdomain string
  name = "${var.record_prefix}${var.github_owner}.${data.aws_route53_zone.zone.name}"
  type = "TXT"
  ttl  = var.record_ttl

  records = [
    var.validation_code
  ]
}
