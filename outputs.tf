output "ownership" {
  value       = aws_route53_record.ownership.name
  description = "interpolated value of `aws_route53_record.ownership.name`"
}

output "zone_name" {
  value       = local.zone_name
  description = "interpolated value of `local.zone_name`"
}
