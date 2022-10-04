

variable "igw_tag" {
  description = "Mention Tag needs to be associated with internet gateway"
  type        = string
  default     = "tf_igw"
}
variable "public_route_table_tag" {
  description = "Tag name for public route table"
  type        = string
  default     = "tf_public_route_table"
}

variable "cidr" {
  description = "Enter the CIDR range required for VPC"
  type        = string
  default     = "192.168.0.0/16"
}
variable "enable_dns_hostnames" {
  description = "Enable DNS Hostname"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
  description = "Enable DNS Support"
  type        = bool
  default     = null
}


variable "vpc_name" {
  description = "Tag Name to be assigned with VPC"
  type        = string
  default     = "wp_vpc"
}



variable "public_subnet_tag_1" {
  description = "Tag for public subnet"
  type        = string
  default     = "tf_public_subnet_az_1a"
}
variable "public_subnet_tag_2" {
  description = "Tag for public subnet"
  type        = string
  default     = "tf_public_subnet_az_1b"
}

variable "public_subnet" {
  description = "enter the number of public subnets you need"
  type        = number
  default     = null
}

variable "public_subnets_cidr_1" {
  description = "Cidr Blocks"
  type        = string
  default     = "192.168.1.0/24"
}

variable "map_public_ip_on_launch" {
  description = "It will map the public ip while launching resources"
  type        = bool
  default     = null
}
