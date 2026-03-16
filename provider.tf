terraform {
    required_providers {
        aws = { 
            source = "hashicorp/aws" 
            version = "6.36.0"
        }
    }

    backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true 
  }
} 
    
provider "aws" {
    region = "us-east-1"
}
