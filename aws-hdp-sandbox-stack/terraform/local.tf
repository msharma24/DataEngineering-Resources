locals {
  region = var.region

  user_data = <<-EOT
  #!/bin/bash
  log="/var/log/user_data.log"
  exec 1>>$log
  yum update -y
  sleep 5;
  yum install git -y
  cd /tmp
  git clone https://github.com/ruslanmv/HDP-Sandbox-AWS.git
  cd HDP-Sandbox-AWS/
  echo "[INFO] Install docker"
  bash install_docker.sh
  sudo docker info
  cd HDP_2.6.5/
  echo "[INFO] deploy HDP sandbox"
  bash docker-deploy-hdp265.sh
  echo "[INFO] HDP sandbox Deployment completed"
  EOT
}
