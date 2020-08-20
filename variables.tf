variable "account_name" {
  description = "A common account name"
}
variable "cidr" {
  description = "The CIDR block to be associated to the VPC"
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
variable "vpc_endpoint_cloudwatch_enabled" {
  description = "Boolean to turn on/off cloudwatch endpoint"
  default = 0
}
variable "vpc_endpoint_cloudwatch_log_enabled" {
  description = "Boolean to turn on/off cloudwatch logs endpoint"
  default = 0
}
variable "vpc_endpoint_ec2_enabled" {
  description = "Boolean to turn on/off ec2 endpoint"
  default = 0
}
variable "vpc_endpoint_s3_enabled" {
  description = "Boolean to turn on/off s3 endpoint"
  default = 0
}
variable "vpc_endpoint_ssm_enabled" {
  description = "Boolean to turn on/off ssm endpoint"
  default = 0
}
locals {
  public_cidrs  = [cidrsubnet(var.cidr, 3, 0), cidrsubnet(var.cidr, 3, 1), cidrsubnet(var.cidr, 3, 2)]
  private_cidrs = [cidrsubnet(var.cidr, 3, 3), cidrsubnet(var.cidr, 3, 4), cidrsubnet(var.cidr, 3, 5)]
}

