terraform {
  backend "s3" {
    bucket = "batch3360"
    region = "us-east-1"
    key = "tfstatefile"
  }
}
provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-00d5bac945ac6b509"]
    key_name = var.key_name
    availability_zone = "us-east-1a"
    tags = {
      Name ="myinstance"
    }
}

variable "ami_id" {
  default = "ami-0c398cb65a93047f2"
}
variable "instance_type" {
default = "t3.micro"
}
variable "key_name" {
  default = "id_dsp.pem"
}

