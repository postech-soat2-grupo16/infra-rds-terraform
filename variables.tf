variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "db_username" {
  description = "Database username"
  type        = string
  sensitive = true
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive = true
}

variable "subnet_a_id" {
  description = "Subnet A id"
  type        = string
  default     = "value"
}

variable "subnet_b_id" {
  description = "Subnet B id"
  type        = string
  default     = "value"
}

variable "subnet_group_name" {
  description = "Subnet group name"
  type = string
  default = "subnet-group-rds"
}

variable "security_group_db" {
  description = "security group DB"
  type        = string
  default     = "value"
}
