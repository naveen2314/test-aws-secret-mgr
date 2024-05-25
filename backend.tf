terraform {
  backend "s3" {
    bucket         = "my-eks-s3-backend" #"<your_bucket_name>"
    key            = "terraform/state"
    region         = "us-west-2"            # Update with your desired region
    dynamodb_table = "terraform-state-lock" # Optional: Use DynamoDB for state locking
  }
}
