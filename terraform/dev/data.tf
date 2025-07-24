/* 
------------------------------------------------------------------------------
data.tf

This file defines data sources — read-only views into existing infrastructure
or external information. Unlike resources, data sources **don’t create** anything.

🧠 Why use data sources?
- Reference existing resources (e.g., AMIs, VPCs, subnets, IAM policies)
- Pull in dynamic values based on conditions or filters
- Enable reusability and portability without hardcoding IDs

🛠️ Syntax:
data "<provider>_<type>" "<name>" {
  <configuration>
}

💡 Example:
data "aws_ami" "ubuntu_latest" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

Later you can reference it like:
ami = data.aws_ami.ubuntu_latest.id

🔗 Best for when you:
- Need to retrieve pre-existing infrastructure
- Want to future-proof your configs (e.g. always grab the latest AMI)

✅ Use this file to define external or existing values needed by your modules/resources.
------------------------------------------------------------------------------
 */

data "aws_key_pair" "existing_key" {
  key_name = "my-existing-key" # Replace with your actual key name
}