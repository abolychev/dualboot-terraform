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
  type = list(object({
    name      = string
    image     = string
    essential = bool
    links     = list(string)
    volumesFrom = list(object({
      sourceContainer = string
      readOnly        = bool
    }))
    mountPoints = list(object({
      sourceVolume  = string
      containerPath = string
      readOnly      = bool
    }))
    portMappings = list(object({
      containerPort = number
      hostPort      = number
    }))
    logConfiguration = object({
      logDriver = string
      options = object({
        awslogs-group = string
        awslogs-region = string
        awslogs-stream-prefix = string
      })
    })
  }))
}

