resource "aws_instance" "main" {

  # instance_market_options {
  #   market_type = "spot"
  #   spot_options {
  #     max_price = 0.0031
  #   }
  # }
  
  ami                    = data.aws_ami.main.id 
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = "${var.Name}-${var.env}"
  }
}