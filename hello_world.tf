terraform {
  required_providers {
    chrisurf = {
      source = "chrisurf/chrisurf"
      version = "0.0.7"
    }
  }
}

resource "chrisurf_hello_world" "example" {
  output = "Hello, World!"
}