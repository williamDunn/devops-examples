/* 
------------------------------------------------------------------------------
main.tf

Contains the core Terraform configuration — resources to create, using input
variables and provider configuration defined elsewhere (e.g., provider.tf).

This file contains core resource definitions for this Terraform configuration.
In smaller projects, it may include everything — provider setup, variables, and
resources. In larger or more organized repos (like this one), it's typically used
for:

- Miscellaneous or general-purpose resources
- Simple test/demonstration resources (like local_file or random_id)
- High-level logic that doesn't fit cleanly into a specific category (e.g. IAM, networking)

Note: Terraform loads all `.tf` files in a directory, so `main.tf` doesn't hold
special meaning — it's used mainly for readability and convention.
------------------------------------------------------------------------------
 */

resource "local_file" "ci_report" {
  filename = var.output_path
  content  = "CI pipeline setup complete at ${timestamp()}"
}

resource "aws_instance" "web" {
  count         = length(var.servers1)
  ami           = var.ami
  instance_type = var.instance_type1
  tags = {
    name = var.servers1[count.index]
  }
}

/* resource "aws_instance" "production" {
  ami           = var.ami
  instance_type = var.instance_type1["prod"]
  tags = {
    name = var.servers1[0] # Assuming first server is production
  }
} */

resource "aws_instance" "example1" {
  ami           = var.ami
  instance_type = var.instance_type1
}

#create resources that have dependencies
/* resource "aws_instance" "db" {
  ami           = var.db_ami
  instance_type = var.web_instance_type
}

resource "aws_instance" "web" {
  ami           = var.web_ami
  instance_type = var.db_instance_type
  depends_on = [
    aws_instance.db
  ]
} */