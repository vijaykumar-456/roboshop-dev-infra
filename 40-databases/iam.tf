# #step 1: create a role in IAM as same in AWS interface
# resource "aws_iam_role" "mysql" {
#   name = "${local.common_name}-mysql"

#   # This is the trust policy, meaning we can attach to EC2 instance
#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       },
#     ]
#   })

#   tags = merge (
#     {
#         Name = "${local.common_name}-mysql"
#     },
#     local.common_tags
#   )
# }

# #step 2: Create a new custom policy 
# resource "aws_iam_policy" "mysql" {
#   name        = "${local.common_name}-mysql"
#   description = "Mpolicy to read ssm parameter to attach to mysql instance"

#   # Terraform's "jsonencode" function converts a
#   # Terraform expression result to valid JSON syntax.
#   policy = file("mysql-iam-policy.json")
# }

# #step 3: Attach the policy to the user role
# resource "aws_iam_role_policy_attachment" "mysql" {
#   role       = aws_iam_role.mysql.name
#   policy_arn = aws_iam_policy.mysql.arn
# }

# #step 4: Create instance profile
# resource "aws_iam_instance_profile" "mysql" {
#   name = "${local.common_name}-mysql"
#   role = aws_iam_role.mysql.name
# }