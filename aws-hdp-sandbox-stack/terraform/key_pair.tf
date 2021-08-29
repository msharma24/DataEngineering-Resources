module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "hdp-sandbox-key"
  public_key = var.public_key

}

