/* ------------------------------------------------------------------------------
variables.tf

This file defines input variables used throughout the Terraform configuration.

🧠 Why use variables?
Variables allow you to parameterize your code — instead of hardcoding values,
you can define them here and reuse or override them easily across environments.

✅ Common examples:
- File paths (e.g., where to output local files)
- AWS region, resource names, instance types
- Project-specific identifiers like environment or suffixes

🔢 Supported variable types:
- string     → e.g. "us-east-1"
- number     → e.g. 3, 42.5
- bool       → e.g. true, false
- list(...)  → e.g. ["a", "b", "c"]
- map(...)   → e.g. { region = "us-east-1", tier = "prod" }
- object({}) → e.g. object({ name = string, count = number })
- any        → accepts any type (less strict, not recommended for large configs)

💡 Objects are useful for grouping multiple related variables:
  variable "person" {
    type = object({
      name = string
      age  = number
    })
  }

🔄 Ways to pass variable values:
- Use default values (defined here)
- Override with a `terraform.tfvars` file
- Pass manually with the CLI: `terraform apply -var="output_path=foo.txt"`
- Use environment variables: `export TF_VAR_output_path="foo.txt"`

🌍 Note: Terraform will automatically pick up any variable passed as an
environment variable if it’s prefixed with `TF_VAR_`.

📊 Variable Definition Precedence (lowest → highest):
1. Default values in `variables.tf`
2. Environment variables (`TF_VAR_name`)
3. `terraform.tfvars` file
4. `*.auto.tfvars` files (alphabetical order)
5. CLI flags (`-var`, `-var-file`) → highest priority

Higher precedence overrides lower values — CLI always wins.
------------------------------------------------------------------------------
 */

variable "output_path" {
  description = "Path to store the CI report file"
  default     = "root/ci-report.txt"
}

variable "ami" {
  description = "AMI ID to use for EC2 instances"
  type        = string
  default     = "ami-12345678" # Example AMI ID, replace with actual
  sensitive   = true
}

variable "instance_type1" {
  description = "Size of EC2"
  type        = string
  default     = "t2.micro" # Example instance type, replace with actual
  sensitive   = false
}

#list example
variable "servers1" {
  description = "List of server names to provision"
  type        = list(string)
  default     = ["server1", "server1", "server2"] # Example server names, replace with actual
}

#set example (difference between set & list: set does not allow duplicates)
variable "servers2" {
  description = "List of server names to provision"
  type        = set(string)
  default     = ["server1", "server2", "server3"] # Example server names, replace with actual
}

#map example
variable "instance_type2" {
  type = map(any)
  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.small"
    "prod"  = "t2.medium"
  }
}

#tuple example
variable "web" {
  type    = tuple([string, number, bool])
  default = ["web-server", 3, true]
}

#object example
/* variable "Will" {
  type = object({
    name            = string
    age             = number
    hobbies         = list(string)
    favorite_animal = bool
  })
} */