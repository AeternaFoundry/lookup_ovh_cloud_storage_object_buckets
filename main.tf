data "ovh_cloud_storage_object_buckets" "cloud_storage_object_buckets_lookup" {
  for_each = var.cloud_storage_object_buckets_lookup

  service_name = each.value.service_name
  region       = each.value.region
}

