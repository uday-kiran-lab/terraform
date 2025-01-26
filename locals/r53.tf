resource "aws_route53_record" "expense" {
  count           = length(var.instance_names)
  zone_id         = local.zone_id # particular vale you should define as local.variable_name
  name            = var.instance_names[count.index] == "frontend" ? local.domain : "${var.instance_names[count.index]}.${local.domain}"
  type            = "A"
  ttl             = 1
  records         = var.instance_names[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]
  allow_overwrite = true

}