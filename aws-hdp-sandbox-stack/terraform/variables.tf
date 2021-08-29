variable "region" {
  description = "AWS Region"
}

variable "environment" {
  description = "environment name"
  default     = "dev"
}

variable "instance_type" {
  description = "Hadoop EC2 instance type"
  default     = "t2.xlarge"
}

variable "volume_size" {
  description = "instance volume size"
  default     = 50

}

variable "public_key" {
  description = "SSH Pubic Key for HDP Sandbox EC2"

}
