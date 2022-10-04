resource "aws_instance" "db" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = var.enter-ec2-instance-name[count.index]
  } 
}