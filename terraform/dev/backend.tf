/* 
------------------------------------------------------------------------------
backend.tf

This file defines the Terraform backend configuration, which controls where
Terraform stores its state file (`terraform.tfstate`). By default, state is
stored locally, but using a remote backend (e.g. S3, Terraform Cloud, etc.)
enables collaboration, locking, and persistence across teams or systems.

🧠 What is a backend?
- A backend tells Terraform *how and where* to load/save state
- Common backends: local (default), s3, azurerm, gcs, remote (Terraform Cloud)

⚠️ Important:
- Backend config is **not part of the standard variable flow**
- Changes to the backend require reinitialization:
    terraform init -reconfigure

✅ Use this file to define remote backend settings for shared state management.
------------------------------------------------------------------------------
 */

terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-locking"
  }
}