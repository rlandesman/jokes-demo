provider "google" {
  credentials = file("<PATH_TO_YOUR_JSON_KEY_FILE>")
  project     = "<YOUR_GCP_PROJECT_ID>"
  region      = "<YOUR_GCP_REGION>"
}
