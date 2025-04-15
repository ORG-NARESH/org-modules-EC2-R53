resource "aws_instance" "main" {
  
  ami                    = data.aws_ami.main.id 
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}