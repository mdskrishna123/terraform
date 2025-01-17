variable "instances" {  # Naming instances
  type = list
  default = ["web-server","app-server","db-server"]
}

# if env is test I want to create t3.micro, otherwise I want to create t3.large
# Method-1
variable "is_test" {
  type = bool
  default  = false
}
# Method-2 
variable "environment" {
  type = string
  default = "DEV"
}

# web-server should be t3.micro, app-server should be t3.medium, db-server should be t3.large
variable "servers" {
  type = map
  default = {
    "web-server" = "t3.micro"
    "app-server" = "t3.medium"
    "db-server" = "t3.large"
  }
}

variable "instance_name" {
  type = string
  default = "web-server"
}


# instance name should be web-server-DEV
