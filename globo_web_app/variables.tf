variable "aws_region" {
  type        = string
  description = "AWS region for deployment"
  default     = "us-east-1"
}

## Add these after the first challenge

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_public_subnets_count" {
  type        = number
  description = "Number of public subnets in VPC"
  default     = 2

}

variable "vpc_public_subnets_cidr_block" {
  type        = list(string)
  description = "CIDR Block for public subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "aws_route_table" {
  type        = list(string)
  description = "Route table for VPC subnets"
  default     = ["0.0.0.0/0"]

}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}

variable "aws_instance_type" {
  type        = string
  description = "Type for EC2 Instnace"
  default     = "t3.micro"
}

variable "aws_instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
  default     = 2

}

## Add these after the local value discussion

variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}

variable "naming_prefix" {
  type        = string
  description = "Prefix for resource names"
  default     = "globo-web-app"

}

variable "environment" {
  type        = string
  description = "Environment for resource tagging"
  default     = "dev"

}