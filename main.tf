provider "aws" {
    profile = "default"
    region     = "${var.region}"
}





# Create a VPC to launch our instances into
resource "aws_vpc" "default" {
  cidr_block = "${var.cidr}"
  tags = {
     Name = "demo_vpc"
}
}