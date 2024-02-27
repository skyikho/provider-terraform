# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

# 10 ea : SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002
# 50 ea : SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002
variable "cluster_type" {
  description = "Cluster type. Maximum number of node (10 ea , 50 ea)"
  type        = string
  default     = "SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002"
}

variable "cluster_zone" {
  description = "zone Code"
  type        = string
  default     = "KR-1"
}

variable "k8s_version" {
  description = "Kubenretes version"
  type        = string
  default     = "1.26.10-nks.1"
}



# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

