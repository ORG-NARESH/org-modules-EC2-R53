resource "aws_instance" "main" {
  
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}

resource "aws_route53_record" "main" {
  
  zone_id  = var.zone_id
  name     = "${var.Name}-${var.env}.${var.domain}"
  type     = "A"
  ttl      = "10"
  records  = [ "${var.Name}" == "frontend" ? aws_instance.main.public_ip :  aws_instance.main.private_ip  ]
}