output "aws_instance_public_dns" {
  value = [
    for instance in aws_instance.nginx_instances :
    "http://${instance.public_dns}"
  ]
  description = "Public DNS for EC2 instance"
}