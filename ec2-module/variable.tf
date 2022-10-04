

# variable "enter-ec2-instance-name" {

# }

variable "enter-ec2-instance-name" {

  description = "choose any default list"
  type        = list(any)
  default = ["Business Unit", "Service Owner", "Environment", "Application", "Criticality"
  ]
}

variable "ami" {

  type    = string
  default = "ami-05fa00d4c63e32376"


}

variable "instance-type" {

  type    = string
  default = "t2.micro"

}

variable "vpc_name" {
  description = "Tag Name to be assigned with VPC"
  type        = string
  default     = "tf_vpc"
}

variable "public_subnet_tag_1" {
  description = "Tag for public subnet"
  type        = string
  default     = "tf_public_subnet_az_1a"
}

variable "ec2_machine_counts" {
  default = 1
  
}
