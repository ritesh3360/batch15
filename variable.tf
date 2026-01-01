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
  description = "VPC ID where security group exists"
  type        = string
  default     = "vpc-0abc123456789xyz"
}
