module "child_module_eu" {
  source = "../child-module"

  # Pass the region as a variable to the child module
  app_region = "eu-west-1"
  ami = "ami-12345678"
}