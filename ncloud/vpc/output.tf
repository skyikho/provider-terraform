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