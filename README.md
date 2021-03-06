# GCP Cloud Function

A no-nonsense, get-off-the-ground-quick module for writing GCP Cloud Functions in Terraform.

## Requirements

No requirements.

## Providers

| Name   | Version |
| ------ | ------- |
| google | n/a     |

## Modules

No Modules.

## Resources
| Name                                                                                                                                                           |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [google_cloudfunctions_function](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function)                       |
| [google_cloudfunctions_function_iam_member](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) |
| [google_storage_bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)                                         |
| [google_storage_bucket_object](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object)                           |

## Inputs

| Name                | Description                                         | Type     | Default      | Required |
| ------------------- | --------------------------------------------------- | -------- | ------------ | :------: |
| available_memory_mb | Memory available for the function                   | `number` | `256`        |    no    |
| bucket_name         | Name of the bucket to store the function.           | `string` | `null`       |    no    |
| description         | Description of the function.                        | `string` | `null`       |    no    |
| entry_point         | The cloud function's entrypoint.                    | `string` | n/a          |   yes    |
| function_name       | The name of the Cloud Function.                     | `string` | n/a          |   yes    |
| project_id          | GCP Project ID.                                     | `string` | n/a          |   yes    |
| runtime             | Runtime environment.                                | `string` | `"python37"` |    no    |
| source_zip          | A zipped up file or directory ready for deployment. | `any`    | n/a          |   yes    |
| trigger_http        | Can be triggered over HTTP?                         | `bool`   | `true`       |    no    |

## Outputs

| Name              | Description |
| ----------------- | ----------- |
| https_trigger_url | n/a         |
