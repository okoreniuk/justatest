terraform {
  required_version = "0.13.5"
  backend "s3" {
    role_arn     = "arn:aws:iam::629835853471:role/atlantis"
    session_name = "finanzcheck-main-atlantis"
    bucket    = "finanzcheck-main-production-configuration"
    key       = "terraform/main.tfstate"
    encrypt    = "true"
    kms_key_id   = "arn:aws:kms:eu-central-1:629835853471:key/a045c124-1e20-4128-b223-4cf0de14489c"
    region       = "eu-central-1"
  }
}
