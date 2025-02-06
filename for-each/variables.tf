variable "instance_names" {
    type = map
    default = {
        mysql = "t3.micro"
        backend = "t3.small"
        frontend = "t3.small"
    }
}
variable "domain" {
  type    = string
  default = "devopskiran.online"

}

variable "zone_id" {
  type    = string
  default = "Z00705833LE210VRN2VVE"

}
