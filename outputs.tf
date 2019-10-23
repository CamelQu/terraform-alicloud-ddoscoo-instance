output "this_ddoscoo_ids" {
  value = alicloud_ddoscoo_instance.instance.*.id
}

output "this_name" {
  value = alicloud_ddoscoo_instance.instance.*.name
}

output "this_bandwidth" {
  value = alicloud_ddoscoo_instance.instance.*.bandwidth
}

output "this_base_bandwidth" {
  value = alicloud_ddoscoo_instance.instance.*.base_bandwidth
}

output "this_service_bandwidth" {
  value = alicloud_ddoscoo_instance.instance.*.service_bandwidth
}

output "this_port_count" {
  value = alicloud_ddoscoo_instance.instance.*.port_count
}

output "this_domain_count" {
  value = alicloud_ddoscoo_instance.instance.*.domain_count
}

output "this_period" {
  value = alicloud_ddoscoo_instance.instance.*.period
}