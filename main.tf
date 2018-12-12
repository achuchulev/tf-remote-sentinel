terraform {
  backend "remote" {
    organization = "atanasc"

    workspaces {
      name = "tf-remote-sentinel"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0daad02ff4ba87139"
  instance_type = "t2.micro"
}

#resource "null_resource" "MultiHelloWorld" {
#  count = "2"
#  provisioner "local-exec" {
#    command = "echo Hello world ${count.index + 1}!"
#  }
#}
