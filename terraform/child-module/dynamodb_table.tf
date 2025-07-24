resource "aws_dynamodb_table" "app_table" {
  name         = "table_name"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = hashID

  attribute {
    name = "hashID"
    type = "N"
  }
}