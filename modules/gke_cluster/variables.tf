variable "project_id" {
  description = "The ID of the project in which to create the clusters"
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "location" {
  description = "The location (zone or region) of the cluster"
  type        = string
}

variable "network" {
  description = "The VPC network to host the cluster"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
  default     = 1
}

variable "preemptible" {
  description = "Whether the nodes are preemptible"
  type        = bool
  default     = true
}

variable "machine_type" {
  description = "The type of machine to use for the nodes"
  type        = string
  default     = "e2-micro"
}

variable "disk_size_gb" {
  description = "The disk size for each node"
  type        = number
  default     = 10
}

variable "oauth_scopes" {
  description = "The OAuth scopes for the nodes"
  type        = list(string)
  default     = ["https://www.googleapis.com/auth/cloud-platform"]
}
