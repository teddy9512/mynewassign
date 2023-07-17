terraform {
  backend "s3" {
    bucket                  = "cf-main-state-file-bucket-dev"
    key                     = "env/dev/terraform.tfstate"
    region                  = "eu-west-1"
    encrypt                 = true
    acl                     = "private"
    dynamodb_table          = "cf-dev"
    profile                 = "terraform-profile"
    shared_credentials_file = "~/.aws/credentials"
  }
}
