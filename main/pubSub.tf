resource "aws_subnet" "pubSub" {
  vpc_id     = aws_vpc.mainVPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "devPubSub"
  }
}