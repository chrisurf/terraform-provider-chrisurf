package main

import (
	"terraform-provider-chrisurf/chrisurf"

	"github.com/hashicorp/terraform-plugin-sdk/v2/plugin"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: chrisurf.Provider,
	})
}
