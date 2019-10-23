variable "name" {
  description = "Name of the instance. This name can have a string of 1 to 63 characters."
  default     = "CreatedFromTerraform"
}

variable "bandwidth" {
  description = "Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: 30, 60, 100, 300, 400, 500, 600. The unit is Gbps."
  default     = 30
}

variable "base_bandwidth" {
  description = "Base defend bandwidth of the instance. Valid values: 30, 60, 100, 300, 400, 500, 600. The unit is Gbps."
  default     = 30
}

variable "service_bandwidth" {
  description = "Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps."
  default     = 100
}

variable "port_count" {
  description = " Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65."
  default     = 50
}

variable "domain_count" {
  description = "Domain retransmission rule count of the instance. At least 50. Increase 10 per step, such as 50, 60, 70."
  default     = 50
}