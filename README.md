# Instant Static Site: Just Pass the Vibe

This is a deployable architecture for IBM Cloud that deploys a static website by letting you paste your HTML code directly into a text field.

No files, no git, just vibes.

## What it does

This DA is for when you're vibe coding and just want to see a snippet on a live, public URL right now.

1.  Provisions a new **Cloud Object Storage (COS) instance**.
2.  Creates a **new bucket** inside that instance.
3.  Configures the bucket for **public static website hosting**.
4.  Takes the HTML you pasted into the `sample_html_content` variable and **uploads it as your `index.html` file**.

## How to use it

1.  Click "Deploy".
2.  Fill in the required variables (API key, resource group, names for your instance and bucket).
3.  Paste your HTML code into the **`sample_html_content`** field.
4.  Hit **Apply**.
5.  Check the `website_url` in the outputs for your live site.

Stop waiting for pipelines. Just pass the vibe and get a URL.