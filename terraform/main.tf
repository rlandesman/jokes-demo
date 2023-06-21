provider "google" {
  credentials = file("${var.credentials}")
  project     = var.project
  region      = var.region
}

resource "google_service_account" "service_account" {
  account_id   = "terraform-service-account"
  display_name = "Terraform Service Account"
  project      = var.project
}

resource "google_project_iam_member" "project_iam_member" {
  project = var.project
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
