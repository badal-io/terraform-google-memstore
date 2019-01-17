// Provides information on GCP provider config
data "google_client_config" "default" {}

// Memstore (REDIS) config
resource "google_redis_instance" "default" {
  name            = "${var.name}"
  display_name    = "${var.name}"
  memory_size_gb  = "${var.mem}"
  
  authorized_network = "${var.vpc}"

  tier           = "${var.tier}"
  redis_version   = "${var.version}"

  region  = "${length(var.location) > 0 ? var.location : data.google_client_config.default.region}"
  project = "${length(var.project) > 0 ? var.project : data.google_client_config.default.project}"

  labels = "${var.labels}"
}