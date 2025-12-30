provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0ecb62995f68bb549"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0bb8172ca33f18712"]
    key_name = "id_rsp"
    availability_zone = "us-east-1"
    tags = {
      name ="myinstance"
    }
  
}
resource "aws_security_group" "testing" {
  
}
