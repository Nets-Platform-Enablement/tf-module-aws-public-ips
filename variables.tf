variable "service" {
  type = string
  description = "Name of AWS service in ALL_CAPS, (API_GATEWAY, CLOUD9, CLOUDFRONT etc)"
  sensitive = false
}

variable "region" {
  type = string
  description = "Name of the region (us-west-1, eu-central-1 ...) or 'GLOBAL'"
  sensitive = false
}
