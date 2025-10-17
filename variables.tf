variable "sample_html_content" {
  type        = string
  description = "The HTML code to deploy as a sample index.html page."
  default     = "<html><body><h1>Hello, World!</h1></body></html>"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "Your IBM Cloud API Key."
  sensitive   = true
}
