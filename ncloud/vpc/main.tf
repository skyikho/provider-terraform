resource "ncloud_vpc" "vpc" {
  name            = var.vpc_name
  ipv4_cidr_block = var.vpc_cidr
}

data "ncloud_zones" "zones" {
  region      = var.region
  output_file = "zones.json"
}
