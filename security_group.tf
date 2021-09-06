resource "aws_security_group" "ec2-sg" {

  ingress {
    from_port = 0
    protocol = "-1"
    self = true
    to_port = 0
  } 
    
  ingress {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = "-1"
    to_port = 0
  }

}