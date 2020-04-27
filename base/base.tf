resource "aws_instance" "PluralsightExampleServer1" {
  ami = "ami-07c8a3a59f2f7305b"
  instance_type = "t2.micro"
  tags = {
    Name = "PluralsightExampleServer1",
    Use = "Demo for Pluralsight"
  }
  provisioner "local-exec" {
    command = "echo  Server 1: ${aws_instance.PluralsightExampleServer1.private_ip} >> private_ips.txt"
  }
}

resource "aws_instance" "PluralsightExampleServer2" {
  ami = "ami-07c8a3a59f2f7305b"
  instance_type = "t2.micro"
  tags = {
    Name = "PluralsightExampleServer2",
    Use = "Demo for Pluralsight"
  }
  provisioner "local-exec" {
    command = "echo  Server 2: ${aws_instance.PluralsightExampleServer2.private_ip} >> private_ips.txt"
  }
}