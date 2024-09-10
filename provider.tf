#### PROVIDER AUTHENTIFICATION ####

terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.13"
  backend "s3" {
    bucket         = var.bucket_name
    key            = "terraform.tfstate"
    region         = var.region
    encrypt        = true
    dynamodb_table = var.dynamodb_table_name
  }
}

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  allow_unverified_ssl = true
}

provider "aws" {
}
