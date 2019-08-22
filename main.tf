// verify Domain ownership
resource "aws_route53_record" "ownership" {
  zone_id = var.zone_id
  name    = "_github-challenge-${var.github_organization}.${local.zone_name}"
  type    = "TXT"
  ttl     = var.record_ttl
  records = [var.ownership_record]
}