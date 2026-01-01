provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0c398cb65a93047f2"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00d5bac945ac6b509"]
    key_name = "id_dsp"
    availability_zone = "us-east-1a"
    tags = {
      Name ="myinstance"
    }
  
}
provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0c398cb65a93047f2"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-00d5bac945ac6b509"]
    key_name = "id_dsp"
    availability_zone = "us-east-1a"
    tags = {
      Name ="myinstance"
    }
  
}
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
  default = "id_dsp."
}
output "instance_public_id" {
  value = "aws_instance.myinstance.ip"
}
output "instance_id" {
  value = aws_instance.myinstance.id
}
locals {
  instance_name = "my-instance"
}
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
      Name = local.instance_name
    }
}

data "aws_security_group" "mysg0" {
  filter {
    name = "vpc_id"
    values = [var.vpc_id]
  } 
  filter {
    name = "group-name"
    values = ["mysg0"]
  }
}


variable "ami_id" {
  default = "ami-0c398cb65a93047f2"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "id_dsp."
}
 variable "vpc_id" {
   default = "vpc-00d7f48dd05818b0b"
 }
output "instance_public_ip" {
  value = aws_instance.myinstance.public_ip_address
}
output "instance_id" {
  value = aws_instance.myinstance.id
}

