data "ncloud_zones" "zones" {
  region      = var.region
  output_file = "zones.json"
}
