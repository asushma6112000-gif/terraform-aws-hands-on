 
 resource "aws_instance" "web-1" {
   # ami = "${data.aws_ami.my_ami.id}"
    ami                    ="ami-0c30b7300f5fb34cd"
    availability_zone      = "us-east-1a"
     instance_type         = "t2.micro"
     key_name              = "nv-key"
     subnet_id             = data.aws_subnet.Terraform_Public_Subnet1-testing.id
     vpc_security_group_ids = ["${data.aws_security_group.allow_all.id}"]
     associate_public_ip_address = true	
     tags = {
     
         Name = "Server-1"
         Env = "Prod"
         Owner = "sai"
	CostCenter = "ABCD"
     }
 }
 terraform {
  backend "s3" {
    bucket = "sushma-devops-terraform-state-2026-123"
    key    = "Current-state.cd tfstate"
    region = "us-east-1"
  }
}