output "publi_ip" {
    value = aws_instance.terraform.public_ip
    sensitive = false
    description = "this instance public_ip"

  
}
output "private_ip" {
    value = aws_instance.terraform.private_ip
    sensitive = false
    description = "this instance private_ip"

  
}