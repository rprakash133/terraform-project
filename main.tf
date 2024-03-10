# locals {
#   tags = {
#     Project     = var.project
#     CreatedBy   = var.createdBy
#     CreatedOn   = timestamp()
#     Environment = terraform.workspace
#   }
# }
locals {
  tags = {
    Project   = "ci-cd"
    CreatedBy = "Ravi"
    #CreatedOn   = timestamp
    Environment = "terraform-app"
  }
}

# locals {
#   tags = {
#     Project     = "cicd-proj"
#     CreatedBy   = "ravi"
#     CreatedOn   = timestamp()

#     Environment = "Aws-terraform"
#   }
# }

module "codepipeline" {
  source                         = "./modules/module-aws-code-pipeline"
  project_name                   = var.project_name
  s3_bucket_id                   = var.s3_bucket_id
  full_repository_id             = var.full_repository_id
  codestar_connector_credentials = var.codestar_connector_credentials
  tags                           = local.tags
}

module "codebuild" {
  source              = "./modules/module-aws-codebuild"
  project_name        = var.project_name
  project_desc        = var.project_desc
  environment_image   = var.environment_image
  source_location     = var.source_location
  report_build_status = var.report_build_status
  source_version      = var.source_version
  #buildspec_absloute_path       = var.buildspec_file_absolute_path
  tags = local.tags
}


module "ec2" {
  source            = "./modules/module-aws-ec2"
  ami               = var.ami
  availability_zone = var.availability_zone
  tags              = local.tags
}yes