# resource "ncloud_vpc" "vpc"
#(Optional)생성할 VPC의 이름. 생략되면 Terraform이 임의의 고유한 이름을 할당
variable vpc_name {}
#(Required)VPC의 CIDR 블록. 범위는 프라이빗 대역(10.0.0/8, 172.16.0.0/12, 192.168.0.0/16) 내에서 /16에서 /28까지여야함
variable vpc_cidr {}

#(Optional) 생성할 Subnet의 이름
variable "pri_node_subnet_name" {}
#(Required) VPC 주소 범위 내에서 할당된 몇 가지 서브넷 주소 범위, 반드시 /16과 /28 사이여야 하며, 사설 대역(10.0.0/8, 172.16.0.0/12, 192.168.0.0/16) 내에 있어야 함.
variable "pri_node_subnet" {}
#(Required) zone의 변수값
variable "pri_node_zone" {}
#(Required) 인터넷 연결 유형. PUBLIC을 사용하면 Subnet 내에서 생성된 모든 VM에 기본적으로 공인 IP가 할당되어 인터넷을 통해 직접 통신 가능, 둘 중 선택 - PUBLIC(Public) | PRIVATE(Private)
variable "pri_node_subnet_type" {}
#(Optional) 사용 유형, 기본값은 GEN. 이외의 선택옵션 GEN(General) | LOADB(For load balancer) | BM (For BareMetal) | NATGW (For NAT 게이트웨이)
variable "pri_node_usage_type" {}

variable "pri_lb_subnet_name" {}
variable "pri_lb_subnet" {}
variable "pri_lb_zone" {}
variable "pri_lb_subnet_type" {}
variable "pri_lb_usage_type" {}

variable "pub_lb_subnet_name" {}
variable "pub_lb_subnet" {}
variable "pub_lb_zone" {}
variable "pub_lb_subnet_type" {}
variable "pub_lb_usage_type" {}

#(Required)클러스터 이름
variable "cluster_name" {}
#(Required)클러스터 유형. 노드의 최대 개수에 따라 다름(10개 또는 50개). 현재 10개로 설정
variable "cluster_type" {}
#(Required)zone 코드
variable "cluster_zone" {}
#(Optional)k8s버전 1.26.10-nks.1, 1.27.9-nks.1 두가지 가능
variable "k8s_version" {}


variable "cluster_uuid" {}