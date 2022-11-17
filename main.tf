terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
  }
}

provider "local" {
  # Configuration options
}

resource "local_sensitive_file" "thiago" {
  content  = var.thiago
  filename = "${path.module}/thiago.txt"
}

resource "local_sensitive_file" "jean" {
  content  = var.jean
  filename = "${path.module}/jean.txt"
}
