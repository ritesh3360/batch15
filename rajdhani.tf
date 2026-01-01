<<<<<<< HEAD
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
=======
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
>>>>>>> 9a7b0849dc63c7466b8982a12c47aa1d51ed8a67
