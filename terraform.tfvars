project                  = "cicd-pipeline"
createdBy                = "Ravi"
project_name             = "cicdpipeline"
project_desc             = "codebuild project"
environment_compute_type = "BUILD_GENERAl1_SMALL"
environment_image        = "hashicorp/terraform:1.1.0"
environment_type         = "LINUX_CONTAINER"
dockerhub_credentials    = ""
credentials_provider     = "CODEBUILD"
environment_variables = {
  name  = "KEY"
  value = "VALUE"
  type  = "PLAINTEXT"
}

report_build_status = false
source_version      = "main"
# vpc_id                       = "vpc-##"
# subnets_subnet_id            = ["subnet-###"]
# security_group_ids           = ["sg-###"]

s3_bucket_id                   = "ravi-terraform"
full_repository_id             = "rprakash133/tf-codepipeline"
codestar_connector_credentials = "arn:aws:codestar-connections:us-east-1:112668912639:connection/44add9fd-7159-41a6-bb55-aeb25e3140c4"
availability_zone              = "us-east-1a"
# ami                          = "ami-07d9b9ddc6cd8dd30"
aws_region      = "us-east-1"
region          = "us-east-1"
source_location = "https://github.com/rprakash133/tf-codepipeline.git"
Project         = "terraform-cicd"