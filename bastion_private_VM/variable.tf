variable "name" {
type = string
default = "bastion-server"
}

variable "machine_type" {
type = string
default = "n2-standard-2"
}

variable "zone" {
type = string
default = "us-central1-a"
}

variable "image" {
type = string
default = "debian-cloud/debian-11"
}

variable "name_private" {
type = string
default = "private-server"
}

variable "machine_type_private" {
type = string
default = "n2-standard-2"
}

variable "zone_private" {
type = string
default = "us-central1-a"
}

variable "image_private" {
type = string
default = "debian-cloud/debian-11"
}

variable "ssh_key" {
type = string
default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCqNG27FNQjp6TR4MdI9CfRApJBXyL7zURvS7kp8GkN9QVmkyL0erVWsdTwWyZCfCyIZZxIE6qQ5c0UBYdQGKl1Py4zaPOJgNehxImlFl9Vsw4sSTrir+XDVCNljb1FWqz02Mq8acKTpaNnSt/H8KM6eOqUfFzStm/nAak9bO0aHGlcs1gU5dPEfUN7qpdD0uV0IBxtLPmVwZD5msLTvPKgqBkXzIubEoNTqzAJfNHYcdeEcjnKPme/+Jp8Kc/ZpEpMgMDyABbuuWo1XwDfwlBjtkCDmyvR8O0jyefpGkfJcbWmO1J3MRJPtDVpoH2uZnh4u7Avu3bF5aJ0KczTl2qP9ncxM9mQu+Xx7FlCtcdoD/kpiQSGPgD94k9RcoYyfPMcrPz/lO5k02QS2OdTcjeM1LTfV0udRt1U4rMkxlULz9puv3OAAG/MmE5i8OsSADB2Sdoe+kAeVOVtyC9MQfU/OEkmAQklj1klutl/hsdcdu44bD/J9hgJpzOF/QyWDHE= root@tfm"
}
