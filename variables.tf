variable "database_management_cloud_asms" {
  description = <<EOT
Map of database_management_cloud_asms, attributes below
Required:
    - cloud_asm_id
Optional:
    - cloud_connector_id
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cloud_asm_id       = string
    cloud_connector_id = optional(string)
    defined_tags       = optional(map(string))
    freeform_tags      = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

