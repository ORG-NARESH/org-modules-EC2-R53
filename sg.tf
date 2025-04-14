resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = "terraform expense project"
  
 tags = {
     "Name" = var.security_group_name
 }

    ingress {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      
    }
    ingress {
      description      = "HTTP from VPC"
      from_port        = 0
      to_port          = 0
      protocol         = "tcp"
     
    }
    egress {
      description      = "TLS from VPC"
      from_port        = 0
      to_port          = 0
      protocol         = "tcp"
      
    }
}



# resource "aws_security_group" "main" {
#   name        = var.security_group_name
#   description = "This SG group created for expense project"
 
#   tags = {
#     Name = var.security_group_name
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "main" {
#   security_group_id = aws_security_group.main.id
#   from_port   = 22
#   ip_protocol = "tcp"
#   to_port     = 22
# }

# resource "aws_vpc_security_group_ingress_rule" "main" {
#   security_group_id = aws_security_group.main.id
#   from_port   = 0
#   ip_protocol = "tcp"
#   to_port     = 0
# }

# resource "aws_vpc_security_group_egress_rule" "main" {
#   security_group_id = aws_security_group.main.id

  
#   from_port   = 0
#   ip_protocol = "tcp"
#   to_port     = 0
# }

