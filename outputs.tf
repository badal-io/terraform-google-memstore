output "current_location_id" {
  value       = "${google_redis_instance.default.current_location_id}"
  description = "The current zone where the Redis endpoint is placed."
}

output "host" {
  value       = "${google_redis_instance.default.host}"
  description = "Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service."
}

output "port" {
  value       = "${google_redis_instance.default.port}"
  description = "The port number of the exposed Redis endpoint."
}