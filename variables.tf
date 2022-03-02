variable "location" {
  type        = string
  default = "us-east-1"

  validation {
    condition = contains(
      ["australiaeast", "australiasoutheast", "australiacentral1", "us-east-1"],
      var.location
    )
    error_message = "Err: location is not valid."
  }
}
