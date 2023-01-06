variable "environment" {
  description = "Env"
  type        = string
}

variable "name" {
  description = "Name"
  type        = string
}

variable "network_mode" {
  description = "Network mode"
  type        = string
}

variable "requires_compatibilities" {
  description = "Compatibilities"
  type        = list(string)
}

variable "cpu" {
  description = "CPU"
  type        = number
}

variable "memory" {
  description = "Memory"
  type        = number
}

variable "execution_role_arn" {
  description = "execution_role_arn"
  type        = string
}

variable "task_role_arn" {
  description = "task_role_arn"
  type        = string
}

variable "container_definitions" {
  description = "Container definitions"
  type = list(any)
}

