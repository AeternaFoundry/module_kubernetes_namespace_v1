resource "kubernetes_namespace_v1" "namespace_v1s" {
  for_each = var.namespace_v1s

  wait_for_default_service_account = each.value.wait_for_default_service_account

  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      annotations   = metadata.value.annotations
      generate_name = metadata.value.generate_name
      labels        = metadata.value.labels
      name          = metadata.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      delete = timeouts.value.delete
    }
  }
}

