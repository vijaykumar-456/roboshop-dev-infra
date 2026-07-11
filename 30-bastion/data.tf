data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project}/${var.environment}/public_subnet_ids"
}

data "aws_ami" "learndevopskills" {
    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

}

data "http" "my_public_ip" {
  url = "https://ipv4.icanhazip.com"
}