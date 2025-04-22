data "aws_ami" "main" {
 
  most_recent      = true
  owners           = ["703671922956"]
  
 filter {
    name   = "description"
    values = ["MyPracticeImage"]
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


