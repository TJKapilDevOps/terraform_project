provider "aws" {
  region = var.region

}

resource "aws_instance" "dev_instance" {

 ami           = var.ami_id
 instance_type = var.instance_type

 tags = {

	Name = "GitHubActionEC2"
	Environment = "Dev"

  }
}

resource "aws_s3_bucket" "dev_bucket" {

 bucket = var.bucket_name
 acl    = "private"

 tags = {
        
        Name = "GitHubActionsS3"
	Environment = "Dev"
 }

 













}
