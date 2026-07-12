resource "aws_route53_record" "mongodb" {
  zone_id = var.zone_id
  name    = "mongodb-${var.environment}.${var.domain_name}" #mongodb-dev.learndevopskills.shop
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_route53_record" "redis" {
  zone_id = var.zone_id
  name    = "redis-${var.environment}.${var.domain_name}" #redis-dev.learndevopskills.shop
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}