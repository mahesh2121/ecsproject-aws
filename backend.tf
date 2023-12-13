terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Maheshcloudx"

    workspaces {
      name = "poc"
    }
  }
}
