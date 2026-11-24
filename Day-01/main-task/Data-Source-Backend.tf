provider "aws" {
    region = "us-east-1"
}
    data "aws_vpc" "terraform-aws-testing" {
  id = "vpc-092fefd12ff0f7668"
}

data "aws_subnet" "Terraform_Public_Subnet1-testing" {
  id = "subnet-0ea713a42b288dd75"
}

data "aws_security_group" "allow_all" {
  id = "sg-0e1d2245132ad2079"
}