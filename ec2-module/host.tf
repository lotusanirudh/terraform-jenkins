resource "aws_instance" "self" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = data.aws_subnet.available_public_subnet.id
  #subnet_id = "subnet-0390b8ef0dea826ed"
  count         = var.ec2_machine_counts
  tags = {
    Name = var.enter-ec2-instance-name[count.index]
  }
}
