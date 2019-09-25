locals {
  zone_name = "${data.aws_route53_zone.zone.name}" // NOTE: trailing period is added by data source
}
