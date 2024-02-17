# resource "ncloud_vpc" "vpc"
variable vpc_name {}
#(Optional)생성할 VPC의 이름. 생략되면 Terraform이 임의의 고유한 이름을 할당
variable vpc_cidr {}
#(Required)VPC의 CIDR 블록. 범위는 프라이빗 대역(10.0.0/8, 172.16.0.0/12, 192.168.0.0/16) 내에서 /16에서 /28까지여야함
