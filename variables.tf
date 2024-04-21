variable "workspace" {
  type        = string
  description = "The name of the workspace."
  nullable    = false
}

variable "region" {
  type        = string
  description = "Geographical *region* for Google Cloud Platform."
  nullable    = false
}
