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
    bucket         = "tf-backend-gitlab"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "tf-backend-table"
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