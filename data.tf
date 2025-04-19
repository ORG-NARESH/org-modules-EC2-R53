data "aws_ami" "main" {
 
  most_recent      = true
  owners           = ["355449129696"]
  
 filter {
    name   = "description"
    values = ["DevOps-LabImage-RHEL9"]
  }


}




# data "aws_security_group" "main" {
#   filter {
#     name   = "Name"
#     values = ["B59-SG-Terraform*"]
#   }
# }

# data "aws_security_group"  "main" {
#   filter {
#     name   = "Name"
#     values = ["${var.Name}-${var.env}-SG"]
#   }
# }


data "aws_route53_zone" "main" {
  name       = var.domain
                          }

# data "aws_route53_zone" "main" {
#  zone_id = data.aws_route53_zone.main.zone_id
  
# }

