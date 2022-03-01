terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "amitgupta58"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
