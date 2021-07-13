variable "sg_name" {
  type    = string
  default = "ssr_sg"
}
variable "ssr_port" {
  type    = string
  default = "443"
}
variable "accept" {
  type    = bool
  default = true
}
variable "ucloud_region" {
  type = string
}
variable "ucloud_public_key" {
  type = string
}
variable "ucloud_private_key" {
  type = string
}
