data "ncloud_nks_server_images" "image"{
  hypervisor_code = "XEN"
  filter {
    name = "label"
    values = ["ubuntu-20.04"]
    regex = true
  }
}


data "ncloud_nks_server_products" "nks_products"{
  software_code = data.ncloud_nks_server_images.image.images[0].value
  zone = "KR-1"

  filter {
    name = "product_type"
    values = [ "STAND"]
  }

  filter {
    name = "cpu_count"
    values = [ "2"]
  }

  filter {
    name = "memory_size"
    values = [ "8GB" ]
  }
}

resource "ncloud_nks_node_pool" "node_pool" {
  cluster_uuid = var.cluster_uuid
  node_pool_name = var.node_pool_name
  node_count     = var.node_count
  software_code  = data.ncloud_nks_server_images.image.images[0].value
  product_code   = data.ncloud_nks_server_products.nks_products.products[0].value
  # subnet_no_list = [var.node_subnet_id]
  autoscale {
    enabled = var.autoscale_enabled
    min = var.autoscale_min
    max = var.autoscale_max
  }
}

data "ncloud_nks_node_pool" "node_pool"{
  node_pool_name = var.node_pool_name
  cluster_uuid   = var.cluster_uuid
}