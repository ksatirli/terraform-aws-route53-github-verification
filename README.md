# GitHub Verification DNS Records

> This Terraform Module manages DNS records for [GitHub Domain verification](https://help.github.com/en/articles/verifying-your-organizations-domain).

## Table of Contents

- [GitHub Verification DNS Records](#github-verification-dns-records)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

* Amazon Web Services (AWS) [Account](https://aws.amazon.com/account/)
* Terraform `1.1.x` or newer.

## Usage

For examples, see the [./examples](https://github.com/ksatirli/terraform-aws-route53-workmail-records/tree/main/examples) directory.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| github_organization | GitHub Organization identifier | `string` | n/a | yes |
| ownership_record | Ownership TXT Record | `string` | n/a | yes |
| zone_id | ID of the DNS Zone to store Records in | `string` | n/a | yes |
| record_ttl | TTL for all DNS records | `string` | `300` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_route53_record | Exported Attributes for `aws_route53_record`. |
<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-aws-route53-github-verification/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
