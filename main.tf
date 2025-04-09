resource "aws_instance" "main" {
  
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.instance_type

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}

resource "aws_route53_record" "main" {
  
  zone_id  = var.zone_id
  name     = "${var.Name}-${var.env}.${var.domain}"
  type     = "A"
  ttl      = "10"
  records  = [aws_instance.main.private_ip]
}