#Catalogue
resource "aws_instance" "catalogue" {
  ami           = local.ami_id
  vpc_security_group_ids = [local.catalogue_sg_id]
  instance_type = "t3.micro"
  subnet_id = local.private_subnet_id
 
   
  tags = merge (
    {
      Name = "${local.common_name}-catalogue"
    },
    local.common_tags
  )

 
}