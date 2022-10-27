
data "http" "aws_ranges_query" {
  url = "https://ip-ranges.amazonaws.com/ip-ranges.json"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
  lifecycle {
    postcondition {
      condition     = contains([200, 201, 204, 304], self.status_code)
      error_message = "Could not load AWS Public IP ranges"
    }
  }
}

locals {
  json = jsondecode(data.http.aws_ranges_query.response_body)
  ip_prefixes = toset([ for service in local.json.prefixes : service.ip_prefix if service.service == var.service && service.region == var.region])
}

output "ip_ranges" {
  value = local.ip_prefixes
}

output "updated_date" {
  value = local.json.createDate
}
