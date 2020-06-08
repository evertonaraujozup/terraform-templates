#Configure AWS Provider 
provider "aws" {
  access_key =  ""
  secret_key =  ""
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-zup"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}