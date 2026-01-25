variable "cluster_name" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "node_group_name" {
  type    = string
  default = "primary-ng"
}

variable "instance_types" {
  type    = list(string)
  default = ["t3.micro"]
  # default = ["t3.medium"] Doesnt work in AWS free tier
}

variable "desired_size" {
  type    = number
  default = 1
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 1
}
