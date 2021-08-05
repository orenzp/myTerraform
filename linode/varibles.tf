variable "instance_count" {
  type        = string
  default     = 3
  description = "specify how Linode instances to create"
}
variable "linode_token" {
  type = string
}
variable "root_pass" {
  type = string
}