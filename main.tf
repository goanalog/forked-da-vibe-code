locals {
  iam_endpoint = "https://iam.cloud.ibm.com/identity/token"
}

module "cos" {
  source                          = "./cos"
  resource_group                  = var.resource_group 
  ibmcloud_api_key                = var.ibmcloud_api_key
  # ibmcloud_iam_endpoint (DELETE THIS LINE)
  cos_instance_name               = var.cos_instance_name  
  cos_bucket_name                 = var.cos_bucket_name
  region                          = var.region          # <-- RENAMED THIS
  cos_plan_type                   = var.cos_plan_type
variable "sample_html_content" {
  type        = string
  description = "The HTML code to deploy as a sample index.html page."
  default     = "<html><body><h1>Hello, World!</h1></body></html>"
}

module "toolchain" {
  source                          = "./toolchain"
  depends_on                      = [ module.cos ]
  resource_group                  = var.resource_group 
  ibmcloud_api_key                = var.ibmcloud_api_key
  ibmcloud_iam_endpoint           = local.iam_endpoint
  pipeline_repo_url               = "https://${var.region}.git.cloud.ibm.com/open-toolchain/sample-solution-pipelines.git"
  app_repo_base_url               = "https://${var.region}.git.cloud.ibm.com"
  app_repo_name                   = var.app_repo_name
  cos_bucket_instance_id          = module.cos.cos_bucket_instance_id
  cos_bucket_name                 = module.cos.cos_bucket_name
  s3_endpoint_public              = module.cos.cos_s3_endpoint
}