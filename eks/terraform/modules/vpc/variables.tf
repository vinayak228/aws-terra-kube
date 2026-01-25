variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnet CIDRs"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name for subnet tagging"
}

variable "region" {
  type        = string
  description = "AWS region"
}


