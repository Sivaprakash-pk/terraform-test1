provider "aws" {
  region     = "ap-south-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  key_name = "KP1-M"
  subnet_id = "subnet-09933126161902940"
  vpc_security_group_ids = "sg-0215267de30f10e81"
  associate_public_ip_address = true

  tags = {
    Name = "ExampleInstance"
  }
}
