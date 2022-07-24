variable "region" {
  type = string
  default = ""
}

provider "aws" {
  region     = var.region
}

data "aws_ami" "my_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm"]
  }
}

resource "aws_instance" "terraform_cloud" {
    ami = data.aws_ami.my_ami
    instance_type = "t2.micro"
}
