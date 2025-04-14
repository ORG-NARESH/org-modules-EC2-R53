resource "aws_security_group" "main" {
  name        = "B59-SG-Terraform"
  description = "This SG group to allow ssh"
 
  tags = {
    Name = "B59-SG-Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "main" {
  security_group_id = aws_security_group.main.id
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "main" {
  security_group_id = aws_security_group.main.id
  from_port   = var.port_no
  ip_protocol = "tcp"
  to_port     = var.port_no
}

resource "aws_vpc_security_group_egress_rule" "main" {
  security_group_id = aws_security_group.main.id

  
  from_port   = 0
  ip_protocol = "tcp"
  to_port     = 0
}