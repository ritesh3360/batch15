provider "aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myinstance" {
    ami = "ami-0c398cb65a93047f2"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0ebaff8e72132920e"]
    key_name = "id_rsp"
    availability_zone = "us-east-1a"
    tags = {
      Name ="myinstance"
    }
  
}



