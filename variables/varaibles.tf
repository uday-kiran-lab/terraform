variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
  
}
variable "instane" {
    type = string
    default = "t3.micro"
      
}
variable "tags" {
  type = map
  default = {
    Name = "Terraform"
    Component = "terraform"
    Environment = "DEV"
    Project = "Expense"
  }

}
variable "sg_tags" {
  type = map
  default = {
    Name = "allow_sshh"
    Component = "Security_group"
    Environment = "DEV"
    Project = "Expense"
  }

}
variable "sg_name"{
    type = string
    default = "allow_sshh"

}
variable "sg_desc" {
    type = string
    default = "Allow port number 22 for SSH access"
  
}
variable "from_port" {
    type = number
    default = 22
  
}
variable "to_port" {
    type = number
    default = 22
  
}
variable "ingress_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}
variable "protocol" {
    type = string
    default = "tcp"
  
}