
variable "common_tags" {
  description = "Resource tags"
  type        = map(string)
  nullable    = false
}

variable "profile" {
  type = string
  default = "default"
}

variable "region" {
  type = string
  default = null
}

variable "zone" {
  type = string
  nullable = false
}

variable "ssh_pub_key" {
  type = string
  nullable = false
}

variable "sg_whitelist_cidr_blocks" {
  type     = list(string)
  nullable = false
}

variable "vpc_cidr_block" {
  type = string
  default = "10.2.0.0/16"
}

variable "job_id" {
  type = string
  nullable = false
}

variable "instance_profiles" {
  type = list(object({
    name = string

    vm_count = number
    instance_type = string

    os_type = string
    os_disk_type = string
    os_disk_size = number
    os_disk_performance = string
    image = string

    data_disk_spec = list(object({
      disk_count = number
      disk_type = string
      disk_size = number
      disk_format = string
      disk_performance = string
    }))
  }))
  nullable = false
}

variable "internet_bandwidth" {
  type = number
  default = 100
}

variable "spot_instance" {
  type = bool
  default = false
}

variable "spot_price" {
  type = number
  default = 0
}

variable "resource_group_id" {
  type = string
  default = null
}

