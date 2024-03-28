module "template" {
  source = "/root/terraform/template"
}

resource "google_compute_health_check" "example_health_check" {
  name               = "health-check"
  check_interval_sec = 10
  timeout_sec        = 5
  tcp_health_check {
    port = 80
  }
}

resource "google_compute_instance_group_manager" "instance_group_manager" {
  name               = "instance-group-manager"
  base_instance_name = "instance-group-manager"
  zone               = "us-central1-f"
  target_size        = "1"

  version {
    name              = "v1"
    instance_template = module.template.template_self_link
  }
}

resource "google_compute_autoscaler" "example_autoscaler" {
  name                  = "example-autoscaler"
  zone = "us-central1-f"  # Specify the zone where the autoscaler will be located
  target                = google_compute_instance_group_manager.instance_group_manager.self_link
  autoscaling_policy {
    min_replicas = 1
    max_replicas = 4
  }

}
