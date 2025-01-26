locals {
  domain = "devopskiran.online"
  zone_id = "Z00705833LE210VRN2VVE"
  instance_type = var.envirnoment == "prod" ? "t3.medium" : "t3.micro" #expression is refering into variables
#instance_names also can decalre but count.index will not work in locals
#while creating you should mention as locals but accessing value of varible you should call as local

}