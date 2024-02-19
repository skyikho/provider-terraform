output "vpc_name" {
  description = "ncloud vpc name"
  value       = ncloud_vpc.vpc.name
  sensitive   = false
}

output "vpc_cidr" {
  description = "ncloud vpc ipv4_cidr_block"
  value       = ncloud_vpc.vpc.ipv4_cidr_block
  sensitive   = false
}

## ncloud_nks_cluster_
output "ncloud_nks_cluster_name" {
  description = "Cluster name"
  value       = ncloud_nks_cluster.terraform_cluster.name
  sensitive   = false
}

output "ncloud_nks_cluster_id" {
  description = "Cluster uuid"
  value       = ncloud_nks_cluster.terraform_cluster.id
  sensitive   = false
}

output "ncloud_nks_cluster_endpoint" {
  description = "Control Plane API address"
  value       = ncloud_nks_cluster.terraform_cluster.endpoint
  sensitive   = false
}

output "ncloud_nks_cluster_lb_private_subnet_no" {
  description = "Subnet No. for private loadbalancer only.."
  value       = ncloud_nks_cluster.terraform_cluster.lb_private_subnet_no
  sensitive   = false
}

output "ncloud_nks_cluster_lb_public_subnet_no" {
  description = "Subnet No. for public loadbalancer only. (Supported on public, gov site)"
  value       = ncloud_nks_cluster.terraform_cluster.lb_public_subnet_no
  sensitive   = false
}

output "ncloud_nks_cluster_subnet_no_list" {
  description = "Subnet No. list"
  value       = ncloud_nks_cluster.terraform_cluster.subnet_no_list
  sensitive   = false
}

output "ncloud_nks_cluster_public_network" {
  description = "Public Subnet Network"
  value       = ncloud_nks_cluster.terraform_cluster.public_network
  sensitive   = false
}

# XEN / RHV
# 10 ea : SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002
# 50 ea : SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002
output "ncloud_nks_cluster_cluster_type" {
  description = "Cluster type. Maximum number of nodes XEN / RHV"
  value       = ncloud_nks_cluster.terraform_cluster.cluster_type
  sensitive   = false
}

output "ncloud_nks_cluster_login_key_name" {
  description = "Login key name"
  value       = ncloud_nks_cluster.terraform_cluster.login_key_name
  sensitive   = false
}

output "ncloud_nks_cluster_zone" {
  description = "zone Code"
  value       = ncloud_nks_cluster.terraform_cluster.zone
  sensitive   = false
}

output "ncloud_nks_cluster_log" {
  description = "Audit log availability"
  value       = ncloud_nks_cluster.terraform_cluster.log
  sensitive   = false
}

output "ncloud_nks_cluster_k8s_version" {
  description = "Kubenretes version."
  value       = ncloud_nks_cluster.terraform_cluster.k8s_version
  sensitive   = false
}

output "ncloud_nks_cluster_acg_no" {
  description = "Kubenretes version."
  value       = ncloud_nks_cluster.terraform_cluster.acg_no
  sensitive   = false
}