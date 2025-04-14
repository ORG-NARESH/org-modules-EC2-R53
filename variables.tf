variable "ami" {}
variable "instance_type" {}
variable "vpc_security_group_ids" {}
variable "Name" {}
variable "zone_id" {}
variable "env" {}
variable "domain" {}
variable "security_group_name" {
    type        = string
    default     = null
}
# variable "from_port_no" {}
# variable "to_port_no" {}