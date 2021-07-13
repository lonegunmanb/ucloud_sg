terraform {
  backend "s3" {
    bucket = "myucloudstate"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}
