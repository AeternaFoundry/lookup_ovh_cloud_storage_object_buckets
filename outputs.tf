output "cloud_storage_object_buckets_lookup_buckets" {
  description = "Map of buckets values across all cloud_storage_object_buckets_lookup, keyed the same as var.cloud_storage_object_buckets_lookup except keys with no buckets are omitted"
  value       = { for k, v in data.ovh_cloud_storage_object_buckets.cloud_storage_object_buckets_lookup : k => v.buckets if v.buckets != null && length(v.buckets) > 0 }
}
output "cloud_storage_object_buckets_lookup_region" {
  description = "Map of region values across all cloud_storage_object_buckets_lookup, keyed the same as var.cloud_storage_object_buckets_lookup except keys with no region are omitted"
  value       = { for k, v in data.ovh_cloud_storage_object_buckets.cloud_storage_object_buckets_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloud_storage_object_buckets_lookup_service_name" {
  description = "Map of service_name values across all cloud_storage_object_buckets_lookup, keyed the same as var.cloud_storage_object_buckets_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_storage_object_buckets.cloud_storage_object_buckets_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

