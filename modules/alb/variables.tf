variable "name" {
  description = "Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "security_groups" {
 description = "security_groups"
 type = list(string)
}

variable "subnets" {
  description = "subnets"
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

variable "vpc_id" {
 description = "vpc_id"
 type = string
}

variable "health_check_path" {
 description = "health_check_path"
 type = string
}

variable "certificate_arn" {
  type = string
}

