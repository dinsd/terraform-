# SG for tfServer 

resource "aws_security_group" "tfSG" {
  name        = "tfSGName"
  description = "sg for tfserver"
  vpc_id      = "vpc-e7b56b9a"
}

# Ingress SG

resource "aws_security_group_rule" "tfServerIngress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.tfSG.id #referencing to SG resource label.label2.id  (id=attribute=changeable)
}

# Egress SG

resource "aws_security_group_rule" "tfServerEgress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.tfSG.id #referencing to SG resource label.label2.id  (id=attribute=changeable)
}