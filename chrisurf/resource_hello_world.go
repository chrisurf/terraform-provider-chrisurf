package chrisurf

import (
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func resourceHelloWorld() *schema.Resource {
	return &schema.Resource{
		Create: resourceHelloWorldCreate,
		Read:   schema.Noop,
		Update: schema.Noop,
		Delete: schema.Noop,

		Schema: map[string]*schema.Schema{
			"output": {
				Type:     schema.TypeString,
				Required: true,
			},
		},
	}
}

func resourceHelloWorldCreate(d *schema.ResourceData, m interface{}) error {
	output := d.Get("output").(string)
	d.SetId(output)
	return nil
}
