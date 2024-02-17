provider "ncloud" {
  region      = var.region
  access_key  = var.access_key
  secret_key  = var.secret_key
}

data "ncloud_zones" "zones" {
  region      = "KR"
  output_file = "zones.json"
}

