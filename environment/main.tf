provider "aws" {
  region = "ap-south-1"
}


module "cloudfront" {
  source = "../../modules/cloudfront"
  bucket-name        = "devjadeja.space"
  tag_key_Name       =  "devjadeja.space"
  comment            = "DevOps Automation By Dev Jadeja"
  domain_aliases     = "devjadeja.space"
  logs_prefix        = "logs"
  Environment        = "dev"
  #  One of PriceClass_All, PriceClass_200, PriceClass_100
  price_class        = "PriceClass_All"
  # PUT THE ARN OF YOUR AWS CERTIFICATE MUST BE IN VIRGINIA REGION
  acm_certificate_arn = "arn:aws:acm:ap-south-1:808755661750:certificate/9053ec02-4c40-4fd4-b05f-c34c7651fd64"
}
#Footer
