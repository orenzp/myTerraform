variable "region" {
  type = string
}
variable "machine_type" {
  type    = string
  default = "f1-micro"
}
variable "environment" {
  type    = string
  default = "development"
  validation {
    condition     = var.environment == "development" || var.environment == "production" || var.environment == "staging" || var.environment == "integration"
    error_message = "Enviroment name invalid, must be integration, staging, development and production."
  }
  description = "Name of current envioment to be use in the terraform configuration, This varible will only accept the follwoing values: integration, staging, development and production"
}
variable "instance_count" {
  type    = number
  default = 1
}
variable "secrets" {
  type = map(string)
}