output "fetched-instance-details-ami" {
  
  value = data.aws_instance.myinstance.ami
}