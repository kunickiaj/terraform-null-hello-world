terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "streamsets"

    workspaces {
      name = "terraform-demo"
    }
  }
}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "/usr/bin/bash -c 'echo hello world!'"
  }
}
