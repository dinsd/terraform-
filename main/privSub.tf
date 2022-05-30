resource "aws_subnet" "privSub" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = "10.0.1.128/25"

  tags = {
    Name = "devPrivSub"
  }
}