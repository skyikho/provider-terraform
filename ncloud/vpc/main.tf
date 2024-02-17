resource "ncloud_vpc" "vpc" {
  name            = var.vpc_name
  ipv4_cidr_block = var.vpc_cidr
}