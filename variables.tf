variable "ibmcloud_api_key" {
  type        = string
  description = "Your IBM Cloud API Key."
  sensitive   = true
}

variable "resource_group" {
  type        = string
  description = "The resource group to deploy all resources to."
}

variable "region" {
  type        = string
  description = "The IBM Cloud region to deploy in (e.g., 'us-south')."
  default     = "us-south"
}

variable "cos_instance_name" {
  type        = string
  description = "A unique name for your new Cloud Object Storage instance."
}

variable "cos_bucket_name" {
  type        = string
  description = "A unique, globally-unique name for your new COS bucket."
}

variable "cos_plan_type" {
  type        = string
  description = "The plan type for your COS instance."
  default     = "lite"
}

variable "sample_html_content" {
  type        = string
  description = "The HTML code to deploy as a sample index.html page."
  default     = "<html><body><h1>Hello, World!</h1></body></html>"
}