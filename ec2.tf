resource "aws_instance" "terraform_cloud" {
    ami = "ami-0454207e5367abf01"
    instance_type = "t2.micro"
}
