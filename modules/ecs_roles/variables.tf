variable "environment" {
  description = "Environment"
  type        = string
}

variable "secrets_arn" {
  type = list(string)
}

