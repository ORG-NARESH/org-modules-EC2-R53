resource "aws_route53_record" "main" {

  zone_id = data.aws_route53_zone.main.id
  name    = "${var.Name}-${var.env}.${var.domain}"
  type    = "A"
  ttl     = "10"
  records = [var.Name == "frontend" || var.Name == "frontend-dev" ? aws_instance.main.public_ip : aws_instance.main.private_ip]
}