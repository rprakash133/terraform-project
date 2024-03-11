project                  = "cicd-pipeline"
createdBy                = "Ravi"
project_name             = "cicdpipeline"
project_desc             = "codebuild project"
environment_compute_type = "BUILD_GENERAl1_SMALL"
environment_image        = "aws/codebuild/standard:1.0"
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
#buildspec_file_absolute_path = "./buildspec/buildspec.yml"
# vpc_id                       = "vpc-##"
# subnets_subnet_id            = ["subnet-###"]
# security_group_ids           = ["sg-###"]

s3_bucket_id                   = "ravi-terraform"
full_repository_id             = "https://github.com/rprakash133/tf-codepipeline.git"
codestar_connector_credentials = "arn:aws:codestar-connections:us-east-1:112668912639:connection/f2935c74-df8c-47db-b8e6-e5f9c776270b"
availability_zone              = "us-east-1a"
# ami                            = "ami-07d9b9ddc6cd8dd30"
aws_region      = "us-east-1"
region          = "us-east-1"
source_location = ""
Project         = "terraform-cicd"