variable "account_name" {
  description = "A common account name"
  type        = string
}

variable "sns_topic_name" {
  description = "Name of an SNS topic to create for cloudwatch alarms"
  type        = string
  default     = "vpc_alerts"
}

variable "additional_vpc_tags" {
  type    = map(string)
  default = {}
}

variable "additional_subnet_tags" {
  type    = map(string)
  default = {}
}

variable "cidr" {
  description = "The CIDR block to be associated to the VPC"
  type        = string
}

variable "environment" {
  description = "Name for this environment. e.g. staging"
  type        = string
}

variable "common_tags" {
  description = "Map of common tags to add to every resource"
  type        = map(string)
}

variable "zone" {
  description = "A list of zomes used for this deployment"
  type        = list(string)
}

variable "internal_dns_zone" {
  description = "Zone to define for internal name resolution"
  type        = string
  default     = "internal.cloud"
}

variable "vpc_endpoint_cloudwatch_enabled" {
  description = "Boolean to turn on/off cloudwatch endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_cloudwatch_log_enabled" {
  description = "Boolean to turn on/off cloudwatch logs endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_ec2_enabled" {
  description = "Boolean to turn on/off ec2 endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_sqs_enabled" {
  description = "Boolean to turn on/off sqs endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_s3_enabled" {
  description = "Boolean to turn on/off s3 endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_ssm_enabled" {
  description = "Boolean to turn on/off ssm endpoint"
  type        = number
  default     = 0
}

variable "vpc_endpoint_dynamodb_enabled" {
  description = "Boolean to turn on/off dynamodb endpoint"
  type        = number
  default     = 0
}

variable "subnet_map_public_ip_on_launch" {
  description = "Whether public subnets should allocate a public ip when instances launch"
  type        = bool
  default     = true
}

locals {
  public_cidrs  = [cidrsubnet(var.cidr, 3, 0), cidrsubnet(var.cidr, 3, 1), cidrsubnet(var.cidr, 3, 2)]
  private_cidrs = [cidrsubnet(var.cidr, 3, 3), cidrsubnet(var.cidr, 3, 4), cidrsubnet(var.cidr, 3, 5)]
}
