# Terraform Provider Chrisurf

This repository contains the Terraform provider "chrisurf". It's a simple example to demonstrate how a custom Terraform provider can be created using Golang. This provider allows users to define resources that simply output a string defined by the user.

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) 0.12+
- [Go](https://golang.org/dl/) 1.16 (to build the provider plugin)

## Installing the Provider

Clone the repository and build the provider:

```bash
git clone git@github.com:chrisurf/terraform-provider-chrisurf.git
cd terraform-provider-chrisurf
go build
```

### Steps to Follow:

1. **Build and Place the Provider:**

   - After building your provider with `go build`, place the binary in the correct directory. For example, if you're on a Mac, you would use:
     ```bash
     mkdir -p ~/.terraform.d/plugins/localhost/providers/chrisurf/0.1/darwin_amd64/
     mv terraform-provider-chrisurf ~/.terraform.d/plugins/localhost/providers/chrisurf/0.1/darwin_amd64/
     ```

2. **Update Your Terraform Configuration:**

   - Modify your Terraform configuration file to include the `required_providers` block as shown in the updated README section.

3. **Initialize Terraform:**
   - Run `terraform init` again. Terraform should now recognize and use your local provider.

By following these steps, Terraform will correctly locate and use your custom `helloworld` provider.

## Using the Provider

Add the provider to your Terraform configuration:

```hcl
provider "chrisurf" {}

resource "chrisurf_hello_world" "example" {
  output = "Hello, World!"
}
```

## Configuring the Provider for Local Use

Since this is a custom provider, you must configure Terraform to locate the provider binary locally. To do this, add a `required_providers` block in your Terraform configuration specifying the local path.

For example:

```hcl
# local testing
terraform {
  required_providers {
    chrisurf = {
      source  = "localhost/providers/chrisurf"
      version = "0.1"
    }
  }
}

# terraform registry
terraform {
  required_providers {
    chrisurf = {
      source = "chrisurf/chrisurf"
      version = "0.0.7"
    }
  }
}

provider "chrisurf" {
  # Configuration options
}
```

Run Terraform commands:

```bash
terraform init
terraform apply
```

## Building The Provider

1. **Clone the Repository:**

   ```bash
   git clone git@github.com:chrisurf/terraform-provider-chrisurf.git
   ```

2. **Build the Provider:**

   Navigate into the provider directory and build the provider using the `go build` command.

   ```bash
   cd terraform-provider-chrisurf
   go build
   ```

## Publish Terraform Provider

Run the script with the version number as an argument:

```sh
./generate-manifest.sh 1.0.0
```

## Contributing

Contributions to this provider are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please ensure to update tests as appropriate.

## License

[MIT](https://github.com/chrisurf/terraform-provider-chrisurf/blob/main/LICENSE)
