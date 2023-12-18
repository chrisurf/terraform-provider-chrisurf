terraform {
  required_providers {
    chrisurf = {
      source = "chrisurf/chrisurf"
      version = "0.0.8"
    }
  }
}

resource "chrisurf_hello_world" "example" {
  output = "Hello, World!"
}