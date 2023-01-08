variable "name" {
  type = string
}

variable "environment" {
  type = string
}

variable "cluster_id" {
  type = string
}

variable "task_definition_arn" {
  type = string
}

variable "desired_count" {
  type = number
}

variable "min_percent" {
  type = number
}

variable "max_percent" {
  type = number
}

variable "launch_type" {
  type = string
}

variable "scheduling_strategy" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(object({
    arn = string 
    assign_ipv6_address_on_creation = bool
    availability_zone = string 
    availability_zone_id = string
    cidr_block = string
    customer_owned_ipv4_pool = string
    enable_dns64 = bool
    enable_resource_name_dns_a_record_on_launch = bool
    enable_resource_name_dns_aaaa_record_on_launch = bool
    id = string
    ipv6_cidr_block = string
    ipv6_cidr_block_association_id = string
    ipv6_native = bool
    map_customer_owned_ip_on_launch = bool
    map_public_ip_on_launch = bool
    outpost_arn = string
    owner_id = string
    private_dns_hostname_type_on_launch = string
    tags = map(any)
    tags_all = map(any)
    timeouts = object({})
    vpc_id = string
  }))
}

variable "aws_alb_target_group_arn" {
  type = string
}

variable "container_port" {
  type = number
}

variable "container_name" {
  type = string
}

variable "enable_execute_command" {
  type = bool
}

