
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
  value       = data.ncloud_nks_node_pool.node_pool.autoscale[0].enable
  sensitive   = false
}

output "node_autoscale_min" {
  description = "Minimum number of nodes available for auto scaling"
  value       = data.ncloud_nks_node_pool.node_pool.autoscale[0].min
  sensitive   = false
}

output "node_autoscale_max" {
  description = "Maximum number of nodes available for auto scaling"
  value       = data.ncloud_nks_node_pool.node_pool.autoscale[0].max
  sensitive   = false
}

