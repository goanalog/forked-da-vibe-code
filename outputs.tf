output "website_url" {
  description = "The public URL for your new static site."
  value       = module.cos.cos_s3_website_endpoint
}