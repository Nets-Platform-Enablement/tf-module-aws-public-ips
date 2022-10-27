# AWS Public IPs

Terraform module for getting list of public IP ranges of AWS services based on service and region.

```
module "api_gateway_in_eu" {
  source = "git::https://github.com/Nets-Platform-Enablement/tf-module-aws-public-ips?ref=v1.0"
  region = "eu-central-1"
  service = "API_GATEWAY"
}

output "api-gateway-ip-ranges-in-eu-central-1" {
  value = module.api_gateway_in_eu.ip_ranges
}
```
