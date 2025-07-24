/* 
------------------------------------------------------------------------------
provider.tf

Defines the required Terraform providers (e.g., AWS, local) and their versions.
This is where Terraform knows what external services to use and how to connect.

------

# This file defines the Terraform providers used in this configuration.

🔧 What are providers?
Providers are plugins that let Terraform communicate with external services
like AWS, Azure, GitHub, or your local filesystem. They define how Terraform
should create, read, update, and delete infrastructure on those platforms.

🧰 Example: The 'local' provider lets Terraform create files on your local machine.
Without a provider, Terraform wouldn’t know what to provision or where to send changes.

This file typically includes:
- required_providers block (specifies source and version)
- provider configuration (like region, credentials, etc.)
------------------------------------------------------------------------------
 */

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 1.0.0"
}

provider "local" {
  # No config needed for local
}

provider "aws" {
  region = "us-east-1"
}