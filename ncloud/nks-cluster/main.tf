module "nks_cluster" {
  source = "modules"

  # (parameters hidden for clarity)

  cluster_name = var.cluster_name
  cluster_type = var.cluster_type
  cluster_zone = var.cluster_zone
  k8s_version  = var.k8s_version


  vpc_cidr = "10.0.0.0/16"
  pri_node_subnet = "10.0.1.0/24"
  pri_node_zone   = var.cluster_zone

  pri_lb_subnet = "10.0.11.0/24"
  pri_lb_zone   = var.cluster_zone

  pub_lb_subnet = "10.0.12.0/24"
  pub_lb_zone   = var.cluster_zone

}