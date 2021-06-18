variable "go_token" {}
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.11.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = var.go_token
}

resource "github_repository" "example" {
  name        = "example"
  visibility = "public"
}
