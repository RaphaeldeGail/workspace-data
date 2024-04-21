<!-- BEGIN_TF_DOCS -->
# workspace-data

This terraform module fetch information about a workspace in Google Cloud.

## Requirements

| Name | Version |
|------|---------|
| google | ~> 5.21.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_dns_managed_zone.working_zone](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/dns_managed_zone) | data source |
| [google_kms_crypto_key.symmetric_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_crypto_key) | data source |
| [google_kms_key_ring.key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_key_ring) | data source |

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| region | Geographical *region* for Google Cloud Platform. | `string` | n/a |
| workspace | The name of the workspace. | `string` | n/a |

## Outputs

| Name | Description |
|------|-------------|
| dns\_zone | The DNS zone bound to the workspace. |
| kms\_key | The ID of the symmetric crypto key for the workspace. |
<!-- END_TF_DOCS -->