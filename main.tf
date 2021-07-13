terraform {
  required_providers {
    ucloud = {
      source  = "ucloud/ucloud"
      version = ">=1.29.0"
    }
  }
}

resource "ucloud_security_group" "sg" {
  name = var.sg_name
  rules {
    port_range = var.ssr_port
    policy     = var.accept ? "accept" : "drop"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
  }
  rules {
    protocol   = "icmp"
    cidr_block = "0.0.0.0/0"
    policy     = var.accept ? "accept" : "drop"
  }
}
