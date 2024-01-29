backend "s3" {
    bucket         = "tf-backend-gitlab"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "tf-backend-table"
}
