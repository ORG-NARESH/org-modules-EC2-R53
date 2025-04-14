resource "aws_instance" "main" {
  
  ami                    = data.aws_ami.main.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id] 

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}