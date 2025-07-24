## 📦 Child Module

This directory contains a **Terraform child module**, which is a reusable and self-contained set of Terraform configurations. 

### What Are Modules?

Terraform modules help break infrastructure code into logical components. A **child module** like this one is designed to be consumed by a **parent module** or directly in a root configuration.

### Purpose

This module encapsulates a specific piece of infrastructure logic — making it easier to manage, reuse, and maintain across environments or projects.

### How to Use

```hcl
module "example" {
  source = "../child-module"

  # pass input variables here
}

or remote modules i.e.

module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.59.0"
}