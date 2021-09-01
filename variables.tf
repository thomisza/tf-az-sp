variable "application_full_name" {
  type        = string
  description = "Name of your project, application, product or service."
}

variable "application_environment" {
  type        = string
  default     = "prod"
  description = "Name of the environment (example: dev, test, prod, ...)"
}

variable "application_homepage" {
  type        = string
  description = "The URL to the application's home page"
  default     = "https://app.example.com"
}

variable "service_principal_purpose" {
  type        = string
  description = "Usage of this service princpal (example: azure devops, ...)."
  default     = ""
  validation {
    condition     = can(regex("^\\w+$", var.service_principal_purpose))
    error_message = "Storage account purpose can only consist of lowercase letters and numbers."
  }
}