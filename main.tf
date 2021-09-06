provider "aws" {
    region = "us-east-1"
}

resource "aws_key_pair" "ec2-key"{
    key_name = "ec2-key"
    public_key = "ssh-rsa ..."
}

terraform {
  backend "s3" {
    # Alterar bucket
    bucket = "tfstates-terraform"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}

