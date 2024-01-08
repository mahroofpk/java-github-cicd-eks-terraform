variable "vpc_name" {
  type = string
  default = "java-demo-vpc"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "cluster_name" {
  type = string
  default = "java-demo-eks"
}

variable "cluster_version" {
  type = number
  default = 1.27
}

variable "region" {
  type = string
  default = "us-west-1"
}

variable "availability_zones" {
  type = list
  default = ["us-west-1a", "us-west-1c"]
}
