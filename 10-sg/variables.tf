variable "project" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "sg_names" {
  type = list
  default = [
    "mongodb", "redis", "mysql", "rabbitmq",
    "catalogue", "cart", "user", "shipping", "payment",
    "backend_alb",
    "frontend",
    "frontend_alb",
    "bastion",
    "vpn"
  ]
}