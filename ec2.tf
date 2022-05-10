variable "region" {
  type = string
  default = ""
}

provider "aws" {
  region     = var.region
}

resource "aws_instance" "terraform_cloud" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"
}
