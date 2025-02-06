resource "aws_instance" "expense" {
  #count                  = length(var.instance_names) # declartion of no.of times loop iteration
  for_each = var.instance_names #calling the loop
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

  tags = {
    Name = each.key # access the loop values with each keyword
  }


}
resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_sshh" #allow_ssh is already there in my account
  description = "Allow port number 22 for SSH access"

  # usually we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {

    Name = "allow_sshh"
  }

}
