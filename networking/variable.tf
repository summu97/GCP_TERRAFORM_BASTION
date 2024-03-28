variable "project_id" {
type = string
default = "ringed-hallway-417305"
}

variable "vpc_name" {
type = string
default = "custom-vpc"
}

variable "bastion_subnet" {
type = string
default = "bastion-subnet"
}

variable "bastion_region" {
type = string
default = "us-central1"
}

variable "bastion_cidr" {
type = string
default = "10.0.1.0/24"
}

variable "private_subnet" {
type = string
default = "private-subnet"
}

variable "private_region" {
type = string
default = "us-central1"
}

variable "private_cidr" {
type = string
default = "10.0.2.0/24"
}

variable "bastion_firewall_name" {
type = string
default = "tcp-22-80"
}

variable "bastion_network_tags" {
type = string
default = "bastion-server"
}

variable "private_firewall_name" {
type = string
default = "tcp-22"
}

variable "private_network_tags" {
type = string
default = "private-server"
}
