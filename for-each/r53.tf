resource "aws_route53_record" "expense" {
  #count           = length(var.instance_names)
  for_each = aws_instance.expense
  zone_id         = var.zone_id
  name            = each.key == "frontend" ? var.domain : "${each.key}.${var.domain}"
  type            = "A"
  ttl             = 1
  records         = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true

}