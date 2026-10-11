variable "namespace_v1s" {
  description = <<EOT
Map of namespace_v1s, attributes below
Optional:
    - wait_for_default_service_account
    - metadata (block):
        - annotations (optional)
        - generate_name (optional)
        - labels (optional)
        - name (optional)
    - timeouts (block):
        - delete (optional)
EOT

  type = map(object({
    wait_for_default_service_account = optional(bool)
    metadata = optional(list(object({
      annotations   = optional(map(string))
      generate_name = optional(string)
      labels        = optional(map(string))
      name          = optional(string)
    })))
    timeouts = optional(object({
      delete = optional(string)
    }))
  }))
}

