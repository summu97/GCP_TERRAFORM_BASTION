provider "google" {
  project = "ringed-hallway-417305"
  region  = "us-east1-b"
}

module "networking" {
  source    = "./networking"

  project_id            = var.project_id
  vpc_name              = var.vpc_name
  bastion_subnet        = var.bastion_subnet
  bastion_region        = var.bastion_region
  bastion_cidr          = var.bastion_cidr
  private_subnet        = var.private_subnet
  private_region        = var.private_region
  private_cidr          = var.private_cidr
  bastion_firewall_name = var.bastion_firewall_name
  bastion_network_tags  = var.bastion_network_tags
  private_firewall_name = var.private_firewall_name
  private_network_tags  = var.private_network_tags
}
