provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e35ddab05955cf57"  # Choose appropriate AMI
  instance_type = "t2.micro"

  tags = {
    Name = "GitHub-Triggered-Instance-For-StockMarket-UI"
  }
}