resource "ncloud_vpc" "vpc" {
  //name            = var.vpc_name
  name            = "${terraform.workspace}-${var.vpc_name}"
  ipv4_cidr_block = var.vpc_cidr
}

resource "ncloud_subnet" "private_node_subnet" {
  #private_node_subnet
  name           = "${terraform.workspace}-${var.pri_node_subnet_name}"
  vpc_no         = ncloud_vpc.vpc.id                        #(Required) Subnet을 배치하려는 VPC의 ID
  subnet         = var.pri_node_subnet
  zone           = var.pri_node_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no    #(Required) Network ACL의 ID
  subnet_type    = var.pri_node_subnet_type
  usage_type     = var.pri_node_usage_type
}

resource "ncloud_subnet" "private_lb_subnet" {
  name           = "${terraform.workspace}-${var.pri_lb_subnet_name}"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = var.pri_lb_subnet
  zone           = var.pri_lb_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = var.pri_lb_subnet_type
  usage_type     = var.pri_lb_usage_type
}

resource "ncloud_subnet" "public_lb_subnet" {
  name           = "${terraform.workspace}-${var.pub_lb_subnet_name}"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = var.pub_lb_subnet
  zone           = var.pub_lb_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = var.pub_lb_subnet_type
  usage_type     = var.pub_lb_usage_type
}
