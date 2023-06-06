provider "aws" {
version = "~> 4.0"
region = "ap-south-1"
}
resource "aws_vpc" "key" {
cidr_block = "20.0.0.0/16"
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.key.id

  tags = {
    Name = "main"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.key.id
  cidr_block = "20.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
