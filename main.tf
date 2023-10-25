terraform {
  required_providers {
    aws = "~> 5.0"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "postgresql_db" {
  allocated_storage    = 20
  db_name              = "fastfood"
  engine               = "postgres"
  engine_version       = "15.3"
  instance_class       = "db.t3.micro"
  skip_final_snapshot  = true
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = var.subnet_group_name
  tags = {
    Name = "fastfood-db"
  }
}

