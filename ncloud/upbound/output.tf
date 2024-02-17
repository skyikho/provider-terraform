output "zone_list" {
  description = "Ncloud KR Zone list"
  value       = data.ncloud_zones.zones.output_file
  sensitive   = false
}