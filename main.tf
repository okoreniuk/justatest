terraform {
  required_version = "0.13.5"
  backend "s3" {
    role_arn     = "arn:aws:iam::1123455:role/atlantis"
    session_name = "main-atlantis"
    bucket       = "main-production-configuration"
    key          = "terraform/state.tfstate"
    encrypt      = "true"
    kms_key_id   = "arn:aws:kms:eu-central-1:1123455:key/32598598585"
    region       = "eu-central-1"
  }
}

