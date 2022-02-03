# local

terraform {
  backend "local" {}
}

provider "aws" {
  access_key                  = "fake"
  region                      = "sa-east-1"
  s3_force_path_style         = true
  secret_key                  = "fake"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    sqs             = "http://0.0.0.0:4566"
    cloudformation  = "http://0.0.0.0:4566"
    iam             = "http://0.0.0.0:4566"
  }
}

