resource "aws_network_acl" "networkaclprivatea" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [aws_subnet.private[0].id]

  egress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "all"
  }

  ingress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "all"
  }

  tags = "${merge(var.common_tags,
    map("Type", "NetworkAclPrivateA"),
    map("Name", "${var.account_name}-NetworkAcl-Private-${element(aws_subnet.private.*.id,0)}"))}"
}
