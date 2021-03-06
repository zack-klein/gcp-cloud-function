# GCP Cloud Function

A no-nonsense, get-off-the-ground-quick module for writing GCP Cloud Functions in Terraform.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| google | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [archive_file](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) |
| [google_cloudfunctions_function](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) |
| [google_cloudfunctions_function_iam_member](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) |
| [google_storage_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) |
| [google_storage_bucket_object](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| source\_dir | The relative path to the function code. | `string` | n/a | yes |
| entry\_point | The cloud function's entrypoint. | `string` | n/a | yes |
| function\_name | The name of the Cloud Function. | `string` | n/a | yes |
| project\_id | GCP Project ID. | `string` | n/a | yes |
| available\_memory\_mb | Memory available for the function | `number` | `256` | no |
| bucket\_name | Name of the bucket to store the function. | `string` | `null` | no |
| description | Description of the function. | `string` | `null` | no |
| runtime | Runtime environment. | `string` | `"python37"` | no |
| trigger\_http | Can be triggered over HTTP? | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| https\_trigger\_url | The URL you can use to trigger the function. |
