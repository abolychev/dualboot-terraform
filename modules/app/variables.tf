variable "name" {
  description = "Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "task_cpu" {
  description = "Task CPU"
  type        = number
}

variable "task_memory" {
  description = "Memory"
  type        = number
}

variable "image" {
  description = "Image"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = number
}

