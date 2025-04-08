output "cluster_name" {
  description = "The name of the Kubernetes cluster"
  value       = google_container_cluster.primary.name
}

output "node_pool_name" {
  description = "The name of the node pool"
  value       = google_container_node_pool.primary_nodes.name
}

output "endpoint" {
  description = "GKE Cluster endpoint"
  value       = google_container_cluster.primary.endpoint
}

output "ca_certificate" {
  description = "The public certificate that is the root of trust for the cluster"
  value       = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}

output "client_certificate" {
  description = "The client certificate used to authenticate to the cluster endpoint"
  value       = google_container_cluster.primary.master_auth.0.client_certificate
}

output "client_key" {
  description = "The client key used to authenticate to the cluster endpoint"
  value       = google_container_cluster.primary.master_auth.0.client_key
}

