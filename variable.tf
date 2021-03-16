variable "project_id" {
  type        = string
  description = "GCP Project ID."
}

variable "function_name" {
  type        = string
  description = "The name of the Cloud Function."
}

variable "entry_point" {
  type        = string
  description = "The cloud function's entrypoint."
}

variable "source_zip" {
  description = "A zipped up file or directory ready for deployment."
}

variable "bucket_name" {
  type        = string
  description = "Name of the bucket to store the function."
  default     = null
}

variable "description" {
  type        = string
  description = "Description of the function."
  default     = null
}

variable "runtime" {
  type        = string
  description = "Runtime environment."
  default     = "python37"
}

variable "available_memory_mb" {
  type        = number
  description = "Memory available for the function"
  default     = 256

}

variable "trigger_http" {
  type        = bool
  description = "Can be triggered over HTTP?"
  default     = true
}

variable "service_account_email" {
  description = "Name of the service account to attach to the function (Optional)."
  default     = null
}
