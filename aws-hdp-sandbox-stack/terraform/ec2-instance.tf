module "hadoop_vpc_ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "${var.environment}/hadoop_vpc_instance"
  instance_count = 1

  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  monitoring    = true
  vpc_security_group_ids = [
    module.hadoop_vpc_allow_all_tcp_sg.security_group_id
  ]
  subnet_id = module.hadoop_vpc.public_subnets[0]
  key_name  = module.key_pair.key_pair_key_name

  user_data_base64 = base64encode(local.user_data)

  enable_volume_tags = false
  root_block_device = [
    {
      volume_type = "gp2"
      volume_size = var.volume_size
      tags = {
        Name = "hadoop_vpc_instance_root_block"
      }
    },
  ]


  tags = {
    terraform   = "true"
    environment = "dev"
  }
}
