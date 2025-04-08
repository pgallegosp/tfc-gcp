# Habilitar la API de Kubernetes Engine
resource "google_project_service" "container_api" {
  project = var.project_id
  service = "container.googleapis.com"

  disable_on_destroy = false
}

resource "google_container_cluster" "primary" {
  depends_on = [google_project_service.container_api]
  name     = var.cluster_name
  location = var.location

  remove_default_node_pool = true
  initial_node_count       = 1

  # Establecer deletion_protection en false
  deletion_protection = false

  network    = var.network
  subnetwork = var.subnetwork
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "custom-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.location

  node_count = var.node_count

  node_config {
    preemptible  = var.preemptible
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    oauth_scopes = var.oauth_scopes
  }
}
