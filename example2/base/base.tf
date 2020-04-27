// AWS provider configuration
provider "aws" {
  access_key = "" // Redacted
  secret_key = "" // Redacted
  region = "eu-west-1"
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