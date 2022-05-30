resource "aws_security_group" "sg" {
  name        = "securityGroup"
  description = "sg for pub ec2"
  vpc_id      = aws_vpc.mainVPC.id
}

resource "aws_security_group" "ingress" {
  egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    security_group_id = aws_security_group.sg.id
  }
}

resource "aws_security_group" "egress" {
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    security_group_id = aws_security_group.sg.id 
  }
}