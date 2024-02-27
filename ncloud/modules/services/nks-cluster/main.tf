resource "ncloud_vpc" "vpc" {
  name            = "${terraform.workspace}-vpc"
  ipv4_cidr_block = var.vpc_cidr
}

resource "ncloud_subnet" "node_subnet" {
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = var.pri_node_subnet
  name           = "${terraform.workspace}-node_subnet"
  zone           = var.pri_node_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no    #(Required) Network ACL의 ID
  subnet_type    = "PRIVATE"
  usage_type     = "GEN"
}

resource "ncloud_subnet" "private_lb_subnet" {
  name           = "${terraform.workspace}-private-lb-subnet"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = var.pri_lb_subnet
  zone           = var.pri_lb_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type     = "LOADB"
}

# TODO: PUBLIC LB 서브넷 생성 확인 필요.
resource "ncloud_subnet" "public_lb_subnet" {
  name           = "${terraform.workspace}-public_lb_subnet"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = var.pub_lb_subnet
  zone           = var.pub_lb_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type     = "LOADB"
}

resource "ncloud_login_key" "loginkey" {
  key_name = "${terraform.workspace}-${var.cluster_name}"
}

resource "ncloud_nks_cluster" "cluster" {
  name                 = "${terraform.workspace}-${var.cluster_name}"
  cluster_type         = var.cluster_type
  login_key_name       = ncloud_login_key.loginkey.key_name
  lb_private_subnet_no = ncloud_subnet.private_lb_subnet.id
  lb_public_subnet_no  = ncloud_subnet.public_lb_subnet.id
  subnet_no_list       = [ncloud_subnet.node_subnet.id]
  vpc_no               = ncloud_vpc.vpc.id
  zone                 = var.cluster_zone
  k8s_version          = var.k8s_version
}


data "ncloud_nks_kube_config" "kube_config" {
  cluster_uuid = ncloud_nks_cluster.cluster.uuid
}
