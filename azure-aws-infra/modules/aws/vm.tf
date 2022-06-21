data "aws_ami" "ubuntu" {
  most_recent = true
}

resource "aws_instance" "vm_instance" {
  ami                     = data.aws_ami.ubuntu.id
  instance_type           = "t2.micro"
  key_name                = "vm_instance"
  vpc_security_group_ids  = [aws_security_group.hitc-sg.id]
  subnet_id               = aws_subnet.hitc-subnet.id

  tags = {
    Name = "hitc"
  }
}
