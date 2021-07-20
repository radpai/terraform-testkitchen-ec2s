output "ec2_machines" {
  value = aws_instance.terraform-radpai.*.arn  # Here * indicates that there are more than one arn as we used coun$
}
