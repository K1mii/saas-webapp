variable "vpc_id" {
}



variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "alb_sg" {
  
}