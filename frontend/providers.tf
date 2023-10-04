terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.80.0"
    }
  }

  backend "gcs" {
    bucket = "jo-terraform-states"
    prefix = "investor-chatbot"
  }
}

provider "google" {
  project = "jo-shared-services-lzzo"
  region  = "us-central1"
}

provider "google" {
  alias   = "target"
  project = "jo-investor-chatbot-rulp"
  region  = "us-central1"
}
