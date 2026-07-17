resource "aws_ssm_parameter" "frontend_alb_listener_arn" {
  name  = "/${var.project}/${var.environment}/frontend_alb_listener_arn"  #/roboshop/dev/backend_alb_sg_id
  type  = "String"
  value = aws_lb_listener.https.arn
  overwrite = true
}