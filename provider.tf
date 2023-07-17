provider "aws" {
  region                  = "eu-west-1"
#  profile                 = "terraform-profile"
  allowed_account_ids     = ["xxx"]
  shared_credentials_file = "~/.aws/credentials"
}

