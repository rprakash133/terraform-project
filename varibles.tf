#tags
variable "project" {}
variable "CreatedBy" {}
# General
variable "region" {}

#code build
variable "project_name" {}
variable "project_desc" {}
variable "environment_image" {}
variable "dockerhub_credentials" {}
variable "credentials_provider" {}
variable "report_build_status" {}
variable "source_version" {}
variable "buildspec_file_absloute_path" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "security_group_ids" {}
variable "source_location" {}

#code pipeline
variable "s3_bucket_id" {}
variable "full_repository_id" {}
variable "codestar_connector_credentials" {} 
variable "availability_zone" {}
variable "ami" {}
variable "Project" {}
variable "aws_region" {}
