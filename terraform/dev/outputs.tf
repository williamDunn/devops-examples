/* 
------------------------------------------------------------------------------
outputs.tf

This file defines output values that Terraform will display after applying
the configuration. Outputs are useful for exposing important information
from your infrastructure — like IP addresses, ARNs, DNS names, etc.

🧠 Why use outputs?
- Make resource values easily accessible after provisioning
- Share values between modules
- Reference outputs in automation scripts, pipelines, or remote state

🛠️ Syntax:
output "<name>" {
  value       = <expression>     # required
  description = "..."            # optional but recommended
  sensitive   = true             # optional; hides value from CLI output/logs
}

💡 Example:
output "instance_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP of the web server"
}

🔒 Use `sensitive = true` for passwords, private keys, or secrets

🔗 Outputs can also be consumed by:
- Child modules (via `module.<name>.output_name`)
- Remote state (for multi-stage pipelines)

✅ Use this file to document and surface any values you’ll need post-deployment.
------------------------------------------------------------------------------
 */

output "IP_Address" {
  description = "print the public ip address"
  value       = "12.345.678.90"
  #value       = aws_instance.example1.public_ip
}