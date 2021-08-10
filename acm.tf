# resource "aws_acm_certificate" "DNS" {
#   domain_name       = "venkatcloud.xyz"
#   validation_method = "DNS"
# }

# resource "aws_acm_certificate_validation" "venkat" {
#   certificate_arn = aws_acm_certificate.venkat.arn
# }