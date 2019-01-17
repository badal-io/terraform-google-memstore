variable "name" {
  description = "The name of the bucket."
  type        = "string"
}

variable "location" {
  description = "The GCS region."
  type        = "string"
  default     = ""
}

variable "project" {
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
  type        = "string"
  default     = ""
}

variable "labels" {
  description = "A mapping of labels to assign to bucket."
  type        = "map"
  default     = {}
}

variable "version" {
  description = "REDIS Version. Currently only suported value REDIS_3_2"
  type        = "string"
  default     = "REDIS_3_2"
}

variable "tier" {
  description = "The service tier of the instance. Must be one of these values: BASIC -> Standalone or STANDARD_HA -> Highly available"
  type        = "string"
  default     = "STANDARD_HA"
}

variable "mem" {
  description = "Memory in GB"
  type        = "string"
}

variable "vpc" {
  description = "Self link to VPC the redis cluster belongs to. This is the only network that will be allowed to communicate with the cluster"
  type        = "string"
}


variable "module_dependency" {
  description = "This is a dummy value to create module dependency"
  type        = "string"
  default     = ""
}