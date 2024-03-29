module "multiple-vm" {
source = "/root/terraform/multiple-vm"
}

resource "google_compute_instance_group" "example_unmanaged_group" {
  name = "example-unmanaged-group"
  zone = "us-central1-a"
  instances = [
    module.multiple-vm.vm1_self_link,
    module.multiple-vm.vm2_self_link,
    module.multiple-vm.vm3_self_link,
  ]
}
