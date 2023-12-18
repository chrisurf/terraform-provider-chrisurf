---
page_title: "chrisurf_hello_world Resource - terraform-provider-chrisurf"
subcategory: ""
description: |-
---

# Resource `chrisurf_hello_world`

The `chrisurf_hello_world` resource allows you to manage a simple "Hello World" output. This resource is primarily for demonstration and educational purposes.

## Example Usage

```hcl
resource "chrisurf_hello_world" "example" {
  output = "Hello, World!"
}
```

## Argument Reference

no arguments required

## Attribute Reference

**output** - (Required) The output message to manage.
**id** - The ID of the resource.
