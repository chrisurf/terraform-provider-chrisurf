terraform {
  required_providers {
    chrisurf = {
      source  = "localhost/providers/chrisurf"
      version = "0.1"
    }
  }
}

resource "chrisurf_hello_world" "example" {
  output = "Hello, World!"
}