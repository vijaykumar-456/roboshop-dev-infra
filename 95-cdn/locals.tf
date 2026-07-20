locals {
  cachingOptimized = data.aws_cloudfront_cache_policy.cacheOptimzed.id
  cachingDisabled = data.aws_cloudfront_cache_policy.CachingDisabled.id
    common_tags = {
    Project = "${var.project}"
    Environment = "${var.environment}"
    Terraform = "true"
  }
  certificate_arn = data.aws_ssm_parameter.certificate_arn.value
}