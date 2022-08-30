# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "_github-challenge-${var.github_organization}.${data.aws_route53_zone.zone.name}"
  type    = "TXT"
  ttl     = var.record_ttl

  records = [
    var.ownership_record
  ]
}
