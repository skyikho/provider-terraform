
data "ncloud_nks_kube_config" "kube_config" {
  cluster_uuid = ncloud_nks_cluster.terraform_cluster.uuid
}