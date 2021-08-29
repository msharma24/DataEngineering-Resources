# AWS Hadoop Sandbox Dev Stack

## Description

AWS Stack for learning the Ultimate Hands-On  Hadoop Udemy Course -
[The Ultimate Hands on Hadoop](https://www.udemy.com/course/the-ultimate-hands-on-hadoop-tame-your-big-data/)

### Setup Instructions

Building Hontonworks Data Platform Sandbox on AWS EC2 using Terraform

- Install Terraform
- export AWS CLI Credentials
- ```cd ./terraform```
- Update the TF vars file
    ```cp terraform.tfvars.sample terraform.tfvars```
  and update your Public SSH Key and the AWS region
- ```terraform init```
- ```terraform plan```
- ```terraform apply -auto-approve```
- Access the Ambari UI on `http://<EC2-Public-IP>:8080/`
- Loging to Ambrari uding 'id: maria_dev password: maria_dev'
- Run ```terraform destroy -auto-approve``` to destroy the stack

