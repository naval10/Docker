provider "aws" {
 shared_credentials_files = ["~/.aws/credentials"]
 region     = "us-east-1"
 profile = "default"
}

resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = 3
  key_name      = "Webserver"

  tags = {
    Name = var.env
  }
}

output "address" {
  value = join("", aws_instance.myec2[*].public_dns)
}

