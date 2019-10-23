# terraform-alicloud-ddoscoo-instance
Terraform module which creates a ddoscoo instance on Alibaba Cloud.

These types of resources are supported:

* [Alicloud_ddoscoo_instance](https://www.terraform.io/docs/providers/alicloud/r/ddoscoo_instance.html)

Usage
-----
You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

        module "instance" {
          source = "terraform-alicloud-modules/ddoscoo-instance/alicloud"
          name              = "TerraformExample"
          bandwidth         = 30
          base_bandwidth    = 30
          service_bandwidth = 100
          port_count        = 50
          domain_count      = 50
        }

2. Setting values for the following variables through environment variables:

    - ALICLOUD_ACCESS_KEY
    - ALICLOUD_SECRET_KEY

# alicloud_ddoscoo_instance

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name          |  Name of the instance. This name can have a string of 1 to 63 characters.   |   string  |   CreatedFromTerraform   |    yes       |
|bandwidth |  Base defend bandwidth of the instance. Valid values: 30, 60, 100, 300, 400, 500, 600. The unit is Gbps.  |   integer  |    30   |    yes       |
|base_bandwidth               |  Elastic defend bandwidth of the instance. This value must be larger than the base defend bandwidth. Valid values: 30, 60, 100, 300, 400, 500, 600.    |   integer  |    30   |    yes       |
|service_bandwidth     |  Business bandwidth of the instance. At leaset 100. Increased 100 per step, such as 100, 200, 300. The unit is Mbps.  |   integer  |   100 |    yes       |
|port_count       |  Port retransmission rule count of the instance. At least 50. Increase 5 per step, such as 55, 60, 65.   |   integer  |   50  |    yes       |
|domain_count  |  Domain retransmission rule count of the instance. At least 50. Increase 10 per step, such as 50, 60, 70. |   integer  |    50   |    yes       |

## Outputs

| Name | Description |
|------|-------------|
| id    |     the ID of ddoscoo instance.     |

Authors
-------
Created and maintained by Yiduo Qu(@CamelQu quyiduo@163.com)

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)