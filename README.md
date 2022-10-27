# AWS Public IPs

Terraform module for getting list of public IP ranges of AWS services based on service and region.

```
module "api_gateway_in_eu" {
  source = "./modules/aws-public-ips"
  region = "eu-central-1"
  service = "API_GATEWAY"
}
```
