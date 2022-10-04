module "vpc" {
  source = "../vpc_module"
}

module "ec2" {
  source = "../ec2_module"
  ec2_machine_counts = 3

  depends_on = [
    module.vpc
  ]

}

/* terraform {
  backend "s3"  {
    bucket = "doctorproject25"
    key = "doctor/project"
    region = "us-east-1"
  }
  
} */