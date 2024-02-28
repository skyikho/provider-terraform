
output "node_pool_name" {
  description = "Node pool name."
  value       = ncloud_nks_node_pool.node_pool.node_pool_name
  sensitive   = false
}

output "node_count" {
  description = "Number of nodes.."
  value       = ncloud_nks_node_pool.node_pool.node_count
  sensitive   = false
}

output "node_autoscale_enabled" {
  description = "Auto scaling availability"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].enabled
  sensitive   = false
}

output "node_autoscale_min" {
  description = "Minimum number of nodes available for auto scaling"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].min
  sensitive   = false
}

output "node_autoscale_max" {
  description = "Maximum number of nodes available for auto scaling"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].max
  sensitive   = false
}

