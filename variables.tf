variable "region" {
  type = string
}
variable "instance_type" {
    type = string
    description = "Instance type to be deployed"
    default = "t2.micro"
}