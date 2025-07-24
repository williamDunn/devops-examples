resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "${var.app_region}-AppServer"
  }
  depends_on = [ aws_dynamodb_table.app_table, aws_s3_bucket.app_bucket ]
}