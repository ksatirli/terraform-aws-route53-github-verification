terraform {
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/aws/5.53.0
    aws = {
      source  = "hashicorp/aws"
      version = "5.53.0"
    }
  }

  required_version = ">= 1.2.0"
}
