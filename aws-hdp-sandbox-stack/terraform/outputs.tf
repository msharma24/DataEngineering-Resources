output "hadoop_vpc_id" {
  value = module.hadoop_vpc.vpc_id
}

output "hadoop_vpc_ec2_instance_public_ip" {
  value = module.hadoop_vpc_ec2_instance.public_ip
}

