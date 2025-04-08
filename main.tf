terraform {
  backend "gcs" {
    bucket  = "paultfc"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}

module "gke_cluster_1" {
  source       = "./modules/gke_cluster"
  project_id   = var.project_id
  cluster_name = "cluster-tfc"
  location     = var.zone1
  network      = var.network
  subnetwork   = var.subnetwork
  node_count   = 1
}

