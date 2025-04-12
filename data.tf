data "aws_ami" "main" {
  most_recent = true

  filter {
    name   = "name"
    values = [DevOps-LabImage-RHEL9]
  }

  owners = ["703671922956"]
}



data "aws_instance" "main" {
    private_ip = aws_instance.main.private_ip
}

output "ip" {
  value = data.aws_instance.main.private_ip
}