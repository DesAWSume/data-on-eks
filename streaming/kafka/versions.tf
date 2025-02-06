terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.8"
    }
    kubectl = {
      source  = "alekc/kubectl"
      version = ">= 2.0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1"
    }
  }
    backend "s3" {
    region  = "ap-southeast-2"
    bucket  = "observability-otel-state-poc"
    key     = "xxx/poc/terraform.tfstate"
    encrypt = true
  }  
}