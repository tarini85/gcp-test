resource "google_artifact_registry_repository" "docker_repo" {
  location      = var.region
  repository_id = "my-docker-repo"
  description   = "Docker repository"
  format        = "DOCKER"

  depends_on = [
    google_project_service.artifactregistry
  ]
}
