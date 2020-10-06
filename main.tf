terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "streamsets"

    workspaces {
      name = "terraform-template"
    }
  }
}

provider "null" {
  version = "~> 2.1"
}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo hello world!"
  }
}
