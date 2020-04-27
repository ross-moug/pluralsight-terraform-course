// AWS provider configuration
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
}

resource "aws_instance" "PluralsightExampleServer1" {
  ami = "ami-07c8a3a59f2f7305b"
  instance_type = "t2.micro"
  tags = {
    Name = "PluralsightExampleServer1",
    Use = "Demo for Pluralsight"
  }
}

resource "aws_instance" "PluralsightExampleServer2" {
  ami = "ami-07c8a3a59f2f7305b"
  instance_type = "t2.micro"
  tags = {
    Name = "PluralsightExampleServer2",
    Use = "Demo for Pluralsight"
  }
}