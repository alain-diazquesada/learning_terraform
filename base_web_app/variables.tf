variable "aws_access_key" {
  type        = string
  description = "value of the AWS access key"
  sensitive   = true
}

variable "aws_secret_key" {
  type       = string
  description = "value of the AWS secret key"
  sensitive   = true
}


variable "aws_region" {
  type = map(string)
  description = "value of the AWS region"
    default = {
        us_east_1 = "us-east-1"
        us_west_2 = "us-west-2"
    }
}

# The CIDR blocks for the VPC and subnets. The keys are used to reference them in the code.
variable "cidr_blocks" {
  type = map(number)
  description = "CIDR block for the VPC and subnets"   
    default = {
        public_subnet1 = "10.0.0.0/24"
        public_subnet2 = "10.0.1.0/24"
        aws_vpc        = "10.0.0.0/16"
        route          = "0.0.0.0/0"
    }
}

variable "aws_instance_type" {
  type        = string
  description = "Type of the AWS instance"
  default     = "t3.micro"
  
}