output "kubeconfig_cluster1" {
  description = "Kubeconfig file for Cluster 1"
  value = <<EOT
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${module.gke_cluster_1.ca_certificate}
    server: https://${module.gke_cluster_1.endpoint}
  name: ${module.gke_cluster_1.cluster_name}
contexts:
- context:
    cluster: ${module.gke_cluster_1.cluster_name}
    user: ${module.gke_cluster_1.cluster_name}-user
  name: ${module.gke_cluster_1.cluster_name}
current-context: ${module.gke_cluster_1.cluster_name}
kind: Config
preferences: {}
users:
- name: ${module.gke_cluster_1.cluster_name}-user
  user:
    client-certificate-data: ${module.gke_cluster_1.client_certificate}
    client-key-data: ${module.gke_cluster_1.client_key}
EOT
  sensitive = true
}

#output "kubeconfig_cluster2" {
#  description = "Kubeconfig file for Cluster 2"
#  value = <<EOT
#apiVersion: v1
#clusters:
#- cluster:
#    certificate-authority-data: ${module.gke_cluster_2.ca_certificate}
#    server: https://${module.gke_cluster_2.endpoint}
#  name: ${module.gke_cluster_2.cluster_name}
#contexts:
#- context:
#    cluster: ${module.gke_cluster_2.cluster_name}
#    user: ${module.gke_cluster_2.cluster_name}-user
#  name: ${module.gke_cluster_2.cluster_name}
#current-context: ${module.gke_cluster_2.cluster_name}
#kind: Config
#preferences: {}
#users:
#- name: ${module.gke_cluster_2.cluster_name}-user
#  user:
#    client-certificate-data: ${module.gke_cluster_2.client_certificate}
#    client-key-data: ${module.gke_cluster_2.client_key}
#EOT
#  sensitive = true
#}

output "cluster1_name" {
  description = "GKE Cluster 1 name"
  value       = module.gke_cluster_1.cluster_name
}

output "cluster1_endpoint" {
  description = "GKE Cluster 1 endpoint"
  value       = module.gke_cluster_1.endpoint
}

#output "cluster2_name" {
#  description = "GKE Cluster 2 name"
#  value       = module.gke_cluster_2.cluster_name
#}

#output "cluster2_endpoint" {
#  description = "GKE Cluster 2 endpoint"
#  value       = module.gke_cluster_2.endpoint
#}
