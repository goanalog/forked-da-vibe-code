locals {
  iam_endpoint = "https://iam.cloud.ibm.com/identity/token"
}

# This should be in your variables.tf file,
# but it's not a syntax error to have it here.
variable "sample_html_content" {
  type        = string
  description = "The HTML code to deploy as a sample index.html page."
  default     = "<html><body><h1>Hello, World!</h1></body></html>"
}

module "cos" {
  source                          = "./cos"
  resource_group                  = var.resource_group 
  ibmcloud_api_key                = var.ibmcloud_api_key
  cos_instance_name               = var.cos_instance_name  
  cos_bucket_name                 = var.cos_bucket_name
  region                          = var.region
  cos_plan_type                   = var.cos_plan_type
  
  # Pass the HTML content directly to the cos module
  sample_html_content = var.sample_html_content
}