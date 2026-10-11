variable "cloud_storage_object_buckets_lookup" {
  description = <<EOT
Map of cloud_storage_object_buckets_lookup, attributes below
Required:
    - service_name
Optional:
    - region
EOT

  type = map(object({
    service_name = string
    region       = optional(string)
  }))
}

