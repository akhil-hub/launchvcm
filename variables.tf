variable "project_id" {
  description = "newterraformvariables"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "Name of the Compute Engine instance"
  type        = string
  default     = "demo-instance"
}

variable "machine_type" {
  description = "Type of the Compute Engine instance"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "Boot disk image for the instance"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "network" {
  description = "VPC network name"
  type        = string
  default     = "default"
}
