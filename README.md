# Terraform Bucket Module
A opinionated Terraform module that helps create Memstore (Redis) Instances

Supports following:
- Spin up redis cluster in standalone or HA mode


## Usage
```hcl
module "redis" {
    source  = "github.com/muvaki/terraform-google-memstore"

    name        = "redis sample"
    mem         = "4"
    vpc         = "${module.vpc.self_link}"

    tier        = "BASIC"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | A unique name to give memstore node(s) | string | - | yes|
| location | The GCS Region Location. Module will infer the region from Provider if not passed down | string | - | no|
| project | Project ID for where the bucket will reside within. Can be left empty and it will pick it up from provider settings | string. | "" | no |
| version | REDIS Version. Currently only suported value REDIS_3_2 | string | "REDIS_3_2" | no|
| tier | The service tier of the instance. Must be one of these values: BASIC -> Standalone or STANDARD_HA -> Highly available | string | "STANDARD_HA" | no|
| mem | Memory in GB | string | - | yes|
| vpc | Self link to VPC the redis cluster belongs to. This is the only network that will be allowed to communicate with the cluster | string | - | yes|
| labels | A mapping of labels to assign to bucket. Bucket name under the key 'name' is automatically assigned. Pass a map of key/value to assign as labels 
| module_dependency | Pass an output from another variable/module to create dependency | string | - | no |

## Outputs

| Name | Description | 
|------|-------------|
| current_location_id | The current zone where the Redis endpoint is placed. |
| host | Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service. |
| port | The port number of the exposed Redis endpoint. |

## Docs:

module reference docs: 
- terraform.io (v0.11.11)
- GCP [Memstore](https://cloud.google.com/memorystore/docs/redis/)

### LICENSE

MIT License