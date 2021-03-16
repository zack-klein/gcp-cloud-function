locals {
  zip_dir               = "${path.cwd}/src.zip"
  bucket_name           = var.bucket_name != null ? var.bucket_name : "${var.project_id}-${var.function_name}-function-storage"
  service_account_email = var.service_account_email ? var.service_account_email : null
}

# Bucket to store code
resource "google_storage_bucket" "function_storage" {
  name = local.bucket_name
}

resource "google_storage_bucket_object" "archive" {
  name   = var.source_zip.output_sha
  bucket = google_storage_bucket.function_storage.name
  source = var.source_zip.output_path
}

# Function itself
resource "google_cloudfunctions_function" "function" {
  name                  = var.function_name
  description           = var.description
  runtime               = var.runtime
  available_memory_mb   = var.available_memory_mb
  source_archive_bucket = google_storage_bucket.function_storage.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = var.trigger_http
  entry_point           = var.entry_point
  service_account_email = local.service_account_email
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
