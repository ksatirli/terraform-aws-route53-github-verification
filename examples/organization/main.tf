# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
resource "aws_route53_zone" "example" {
  # AWS reserves `domain.com` and the commonly-known alternative TLDs
  # `.example` is considered a safe space according to RFC 2606.
  name = "organization-domain.example"
}

module "github_verification" {
  source = "../../"

  github_owner    = "a-demo-organization-o"
  validation_code = "123...xyz"
  zone_id         = aws_route53_zone.example.zone_id
}
