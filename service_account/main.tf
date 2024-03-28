resource "google_service_account" "example_service_account" {
  account_id   = var.svc_id
  display_name = var.svc_id
  project      = var.project_id
}

resource "google_project_iam_binding" "service_account_role_bindings" {
  count   = length(var.roles)
  project = var.project_id
  role    = var.roles[count.index]
  
  members = [
    "serviceAccount:${google_service_account.example_service_account.email}"
  ]
}

output "svc_email" {
  value = google_service_account.example_service_account.email
}
