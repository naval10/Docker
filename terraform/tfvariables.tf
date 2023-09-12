variable "ami" {
 default = "ami-0261755bbcb8c4a84"
}

variable "instance_type" {
 default = "t2.micro"
}

variable "env" {
 default ="dev"
}

variable "sg_ports" {
 type = list(number)
 description = "list of ingress ports"
 default = [8080, 443,80, 22, 9000]
}
