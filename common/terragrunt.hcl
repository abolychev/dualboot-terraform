locals {
  region  = "us-east-1"
  project = "infra-study-2023"
  domain = "dualboot.click"
}

inputs = {
  region  = local.region
  project = local.project
  domain = local.domain
}

remote_state {
  backend  = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config   = {
    bucket         = "${local.project}-tf"
    key            = "terraform.tfstate"
    region         = local.region
    encrypt        = true
    dynamodb_table = "${local.project}-lock"
  }
}
