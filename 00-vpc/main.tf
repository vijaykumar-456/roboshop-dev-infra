module "vpc" {
    source = "git::https://github.com/vijaykumar-456/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = false
}