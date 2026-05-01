resource "aws_instance" "frontend" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]


  tags = {
    Name = "frontend"
  }
}

# resource "aws_instance" "postgresql" {
#   ami           = "ami-0220d79f3f480ecf5"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]
#
#   tags = {
#     Name = "postgresql"
#   }
# }
#
# resource "aws_instance" "auth-service" {
#   ami           = "ami-0220d79f3f480ecf5"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]
#
#   tags = {
#     Name  = "auth-service"
#   }
# }
#
# resource "aws_instance" "portfolio-service" {
#   ami           = "ami-0220d79f3f480ecf5"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]
#
#   tags = {
#     Name  = "portfolio-service"
#   }
# }
#
# resource "aws_instance" "analytics-service" {
#   ami           = "ami-0220d79f3f480ecf5"
#   instance_type = "t3.small"
#   vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]
#
#   tags = {
#     Name  = "analytics-service"
#   }
# }

resource "aws_route53_record" "frontend" {
  zone_id   = "Z02346282FFZR4IVNTZCB"
  name      = "frontend-dev"
  type      =  "A"
  tt1       =  30
  records  = [aws_instance.frontend.private_ip]

}




















