data "aws_ami" "main" {
  most_recent = true

  filter {
    name   = "name"
    values = ["DevOps-LabImage-RHEL9"]
  }

  owners = ["703671922956"]
}



data "aws_instance" "main" {
    private_ip = aws_instance.main.private_ip
}



data "aws_security_group" "main" {
  filter {
    name   = "Name"
    values = ["B59-SG-Terraform*"]
  }
}

data "aws_security_group"  "main" {
    id =  data.aws_security_group.main.id
}


data "aws_route53_zone" "main" {
  name         = var.domain
  
}

data "aws_route53_zone" "main" {
 zone_id = data.aws_route53_zone.main.zone_id
  
}

