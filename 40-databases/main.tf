resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.learndevopskills.id
  vpc_security_group_ids = [local.mongodb_sg_id]
  instance_type = "t3.micro"
  subnet_id = local.database_subnet_id
 
   
  tags = merge (
    {
      Name = "${local.common_name}-mongodb"
    },
    local.common_tags
  )

 
}



resource "terraform_data" "mongodb" {
  triggers_replace = [
    aws_instance.mongodb.id
  ]

  connection {
      type        = "ssh"
      user        = "ec2-user"
      password = "DevOps321"
      host        = aws_instance.mogodb.private_ip
    }

  provisioner "remote-exec" {
    
  }
}