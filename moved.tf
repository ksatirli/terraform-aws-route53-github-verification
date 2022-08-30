# see https://www.terraform.io/language/modules/develop/refactoring#moved-block-syntax

moved {
  from = aws_route53_record.ownership
  to   = aws_route53_record.main
}
