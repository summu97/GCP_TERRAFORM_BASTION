variable "project_id" {
description = "sbjds"
type = string
default = "ringed-hallway-417305"
}

variable "svc_id" {
description = "fdfds"
type = string
default = "tfm-svc"
}

variable "roles" {
  default = [
    "roles/compute.networkAdmin",
    "roles/compute.securityAdmin",
    "roles/iam.serviceAccountUser",
    "roles/compute.instanceAdmin"
  ]
}
