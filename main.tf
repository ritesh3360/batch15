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
 resource "aws_instance" "myinstance" {
   ami = var.ami_id
     instance_type = var.instance_type
     vpc_security_group_ids = [data.aws_security_group.mysg0]
     key_name = var.key_name
     availability_zone = "us-east-1a"
     tags = {
       Name = local.instance_name
     }
 }