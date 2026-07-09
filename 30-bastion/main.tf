resource "aws_instance" "bastion" {
  ami           = data.aws_ami.learndevopskills.id
  vpc_security_group_ids = [local.bastion_sg_id]
  instance_type = "t3.micro"
  subnet_id = local.public_subnet_id

   root_block_device {
    volume_size           = 50
    volume_type           = "gp3"

    tags = merge (
    {
      Name = "${local.common_name}-bastion"
    },
    local.common_tags
  )
  }


  tags = merge (
    {
      Name = "${local.common_name}-bastion"
    },
    local.common_tags
  )
}