module "child_module_us" {
  source = "../child-module"

  # Pass variables to the child module
  app_region = "us-east-1"
  ami = "ami-12345678"
}