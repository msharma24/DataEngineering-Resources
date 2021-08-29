
################################################################################
# vpc module spoke vpc a security group
################################################################################
module "hadoop_vpc_allow_all_tcp_sg" {

  source = "terraform-aws-modules/security-group/aws"

  name        = "hadoop vpc security_group allow all tcp"
  description = "security group for all tcp"
  vpc_id      = module.hadoop_vpc.vpc_id


  ingress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      description = "User-service ports (ipv4)"
      cidr_blocks = "${data.http.my_public_ip.body}/32"
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      description = "User-service ports (ipv4)"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

}
