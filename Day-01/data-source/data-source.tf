provider "aws" {
  region = "ap-southeast-1"
}
data "aws_vpc" "data-souce" {
  id = "vpc-0917b9b74b45c222c"
}
resource "aws_internet_gateway" "data-source-igw" {
  vpc_id = data.aws_vpc.data-souce.id

  tags = {
    Name = "data-source-igw"
  }
}
