variable "region" {
  type = string
  default = ""
}

provider "aws" {
  region     = var.region
}

resource "aws_instance" "terraform_cloud" {
    ami = "ami-0454207e5367abf01"
    instance_type = "t2.micro"
}
