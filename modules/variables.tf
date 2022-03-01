##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)


variable "bucket" {
  description = "(Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = "bucket2delete-12345234"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-east-1"
  
   validation {
    condition = contains(
      ["australiaeast", "australiasoutheast", "australiacentral1", "us-east-1"],
      var.location
    )
    error_message = "Err: location is not valid."
  }
  
}



