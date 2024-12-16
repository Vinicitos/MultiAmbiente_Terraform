provider "aws" {
    region = "us-east-1"
}

module "S3_dev" {
    source      = "./modules/S3"
    environment = "dev"
}

module "S3_prod" {
    source      = "./modules/S3"
    environment = "prod"
}

module "S3_staging" {
    source      = "./modules/S3"
    environment = "staging"
}

