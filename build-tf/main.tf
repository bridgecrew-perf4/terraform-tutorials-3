terraform {
  required_providers {
    aws = {
      source = "hasicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tf_ec2_eg" {
    ami = "ami-2757f631"
    instance_type = "t2.micro"

    tags = {
      "Name" = "tf_ec2_inst"
    }
}
