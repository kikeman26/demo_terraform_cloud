data "aws_ami" "my_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "terraform_cloud" {
    ami = data.aws_ami.my_ami.id
    instance_type = var.instance_type
}
