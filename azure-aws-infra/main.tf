module "aws" {
  aws_region = var.aws_region
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  source = "./modules/aws"
}

module "azure" {
  azure_location = var.azure_location
  ssh_user = var.ssh_user
  source = "./modules/azure"
}

