variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}


variable "domain" {
  type    = string
  default = "devopskiran.online"

}

variable "zone_id" {
  type    = string
  default = "Z00705833LE210VRN2VVE"

}