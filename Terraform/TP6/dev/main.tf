provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-carlin"
    key    = "Carlin-dev.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  }
}

module "ec2" {
    source = "../modules/ec2module"
    instancetype = "t2.nano"
    aws_common_tag = {
      Name ="ec2-dev-carlin"
    }
  sg_name = "dev-Carlin-sg"
}

