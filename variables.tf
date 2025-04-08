variable "project_id" {
  description = "The ID of the project in which to create the clusters"
  type        = string
}

variable "region" {
  description = "The region in which to create the clusters"
  type        = string
  default     = "us-central1"
}

variable "zone1" {
  description = "The zone in which to create the first cluster"
  type        = string
  default     = "us-central1-a"
}

variable "zone2" {
  description = "The zone in which to create the second cluster"
  type        = string
  default     = "us-central1-b"
}

variable "network" {
  description = "The VPC network to host the clusters"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to host the clusters"
  type        = string
}
