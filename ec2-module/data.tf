data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["tf_vpc"]
  }
}

/* data "aws_subnet_ids" "available_public_subnet" {
  vpc_id = data.aws_vpc.vpc_available.id
  filter {
    name   = "tag:Name"
    values = ["tf_public_subnet_az_1a"]
  }
} */

data "aws_subnet" "available_public_subnet" {
  vpc_id = data.aws_vpc.vpc_available.id
  filter {
    name   = "tag:Name"
    values = ["tf_public_subnet_az_1a"]
  }
}

data "aws_instance" "myinstance" {
    filter {
      name = "tag:Name"
      values = ["Business Unit"]
    }

    depends_on = [
      aws_instance.self
    ]
}
