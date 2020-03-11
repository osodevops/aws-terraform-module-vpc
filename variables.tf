variable "account_name" {
}

variable "cidr" {
}

variable "environment" {
  type = string
}

variable "common_tags" {
  type = map(string)
}

variable "zone" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

locals {
  public_cidrs  = [cidrsubnet(var.cidr, 3, 0), cidrsubnet(var.cidr, 3, 1), cidrsubnet(var.cidr, 3, 2)]
  private_cidrs = [cidrsubnet(var.cidr, 3, 3), cidrsubnet(var.cidr, 3, 4), cidrsubnet(var.cidr, 3, 5)]
}

