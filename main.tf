resource "aws_instance" "main" {
  
  ami                    = data.aws_ami.main.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.main.id]

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}

resource "aws_route53_record" "main" {
  
  zone_id  = var.zone_id
  name     = "${var.Name}-${var.env}.${var.domain}"
  type     = "A"
  ttl      = "10"
  records  = [ var.Name == "frontend" || var.Name == "frontend-dev" ? aws_instance.main.public_ip :  aws_instance.main.private_ip ]
}