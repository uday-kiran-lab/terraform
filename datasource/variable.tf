variable "instance_names" {
    type = list(string)
    default = [ "mysql","backend","frontend"]
}
variable "common_tags" {
    type = map
    default = {
        Environment = "dev"
        Project = "expense"
        terraform = true
    
    }
  
}

variable "zone_id" {
    type = string
    default = "Z00705833LE210VRN2VVE"
  
}
variable "domain" {
    type = string
    default = "devopskiran.online"
  
}