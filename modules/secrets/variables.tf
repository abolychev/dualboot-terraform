variable "name" {
  description = "Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "secrets" {
  type = map(string)
}

