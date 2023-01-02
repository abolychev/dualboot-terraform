variable "region" {
  description = "aws region"
  type        = string
}

variable "project" {
  description = "Project"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "container_port" {
  description = "Container port"
  type        = number
}

