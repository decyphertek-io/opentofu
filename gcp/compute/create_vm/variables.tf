variable "project_id" {
  description = "The project ID to deploy resources into"
  type        = string
}

variable "region" {
  description = "The region to deploy resources into"
  type        = string
}

variable "zone" {
  description = "The zone to deploy resources into"
  type        = string
}

variable "vm_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type to use for the VM instance"
  type        = string
}

variable "image" {
  description = "The image to use for the VM instance"
  type        = string
}
