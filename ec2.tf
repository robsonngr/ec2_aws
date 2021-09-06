data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    owners = ["099720109477"]
  
}


resource "aws_instance" "tux" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    key_name = "ec2-key"
    #count = 1
    tags = {
      "name" = "tux01"
      "type" = "teste"
    }
    security_groups = ["${aws_security_group.ec2-sg.name}"] 
}