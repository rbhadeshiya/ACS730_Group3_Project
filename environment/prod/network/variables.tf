# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Rushi, Meet, Nikhil"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Name prefix
variable "prefix" {
  default     = "Group3"
  type        = string
  description = "Name prefix"
}


# Variable to signal the current environment 
variable "env" {
  default     = "prod"
  type        = string
  description = "dev environment"
}


# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.250.0.0/16"
  type        = string
  description = "VPC for Dev environment"
}






# Provision public subnets in VPC
variable "public_subnet_cidrs" {
  default     = ["10.250.1.0/24", "10.250.2.0/24", "10.250.3.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}



# Provision private subnets in VPC
variable "private_subnet_cidrs" {
  default     = ["10.250.4.0/24", "10.250.5.0/24", "10.250.6.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs"
}




# Number of Instances in ASG
variable "instance_count" {
  default     = 3
  type        = string
  description = "Dev Environment Instances Count"
}

# ASG Instance Type
variable "type" {
  default     = "t3.medium"
  type        = string
  description = "Dev Environment Instances Type"
}
