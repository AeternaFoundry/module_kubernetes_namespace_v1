output "namespace_v1s_id" {
  description = "Map of id values across all namespace_v1s, keyed the same as var.namespace_v1s except keys with no id are omitted"
  value       = { for k, v in kubernetes_namespace_v1.namespace_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespace_v1s_metadata" {
  description = "Map of metadata values across all namespace_v1s, keyed the same as var.namespace_v1s except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_namespace_v1.namespace_v1s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "namespace_v1s_wait_for_default_service_account" {
  description = "Map of wait_for_default_service_account values across all namespace_v1s, keyed the same as var.namespace_v1s except keys with no wait_for_default_service_account are omitted"
  value       = { for k, v in kubernetes_namespace_v1.namespace_v1s : k => v.wait_for_default_service_account if v.wait_for_default_service_account != null }
}

