provider "google" { # This provider is used for implementing the imporsenation process
  # access_token = data.google_service_account_access_token.sa.access_token
  project = "avian-presence-322020"
  region  = "us-west1"
  zone    = "us-west1-a"
}

terraform {
  backend "remote" {
    organization = "zipori-corp"
    workspaces {
      name = "myGoogle"
    }
  }
}