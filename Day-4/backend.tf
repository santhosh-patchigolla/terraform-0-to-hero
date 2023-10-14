terraform {
  backend "s3" {
    bucket         = "abhishek-s3-demo-xyz" # change this
    key            = "abhi/terraform.tfstate"  #path in S3 bucket to store statefile
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock" # Created a resouse(FYI main.tf); This is used for locking purpose where to avoid multiples people changes at a time, once the locking is done only one person can excute the changes and the other need to wait until its unlock(completion of the appply command) 
  }
}
