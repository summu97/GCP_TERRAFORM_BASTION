provider "google" {
  project     = "ringed-hallway-417305"
  region      = "us-east1-b"
}


module "vm" {
source = "./vm"
}
