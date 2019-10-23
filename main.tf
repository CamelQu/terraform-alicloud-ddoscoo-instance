provider "alicloud" {
  version              = ">=1.56.0"
  region               = "cn-hangzhou"
  configuration_source = "terraform-alicloud-modules/ddoscoo-instance"
}

#########################
# Ddoscoo instance
#########################

resource "alicloud_ddoscoo_instance" "instance" {
  name              = var.name
  bandwidth         = var.bandwidth
  base_bandwidth    = var.base_bandwidth
  service_bandwidth = var.service_bandwidth
  port_count        = var.port_count
  domain_count      = var.domain_count
  period            = var.period
}