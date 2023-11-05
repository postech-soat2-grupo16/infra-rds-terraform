provider "aws" {
  region = var.aws_region
}

#Configuração do Terraform State
terraform {
  backend "s3" {
    bucket = "terraform-state-soat"
    key    = "rds-fastfood-db/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-state-soat-locking"
    encrypt        = true
  }
}

resource "aws_db_instance" "postgresql_db" {
  identifier             = "fastfood-tf"
  allocated_storage      = 20
  db_name                = "fastfood"
  engine                 = "postgres"
  engine_version         = "15.3"
  instance_class         = "db.t3.micro"
  skip_final_snapshot    = true
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.subnet_group_name
  vpc_security_group_ids = [var.security_group_db]

  tags = {
    Name = "fastfood-db"
    infra = "fastfood-db"
  }
}
