module "web-app-s3" {
  source = "./modules/globo-web-app-s3"

  bucket_name             = local.s3_bucket_name
  elb_service_account_arn = data.aws_elb_service_account.root.arn
  common_tags             = local.common_tags
}


# aws_s3_object

resource "aws_s3_object" "website_content" {
  for_each = local.website_content
  # for_each = toset(["website/index.html", "website/Globo_logo_Vert.png"])
  bucket = module.s3-bucket.web_bucket.id
  key    = each.value # could use each.key if you use a toset instead of a map
  source = "${path.module}/${each.value}"

  tags = local.common_tags

}