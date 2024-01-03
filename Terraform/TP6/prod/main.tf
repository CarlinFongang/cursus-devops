provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-carlin"
    key    = "Carlin-prod.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  }
}

module "ec2" {
    source = "../modules/ec2module"
    instancetype = "t2.micro"
    aws_common_tag = {
      Name ="ec2-prod-carlin"
    }
  sg_name = "prod-Carlin-sg"
}

