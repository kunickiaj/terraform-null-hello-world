# terraform-template

Template repository for new Terraform Modules and Configurations

## Development Prerequisites

If you're making contributions to this configuration please ensure to install and configure the `pre-commit` hooks.

### 1. Install dependencies

- [`pre-commit`](https://pre-commit.com/#install)
- [`terraform-docs`](https://github.com/segmentio/terraform-docs) required for `terraform_docs` hooks. `GNU awk` is required if using `terraform-docs` older than 0.8.0 with Terraform 0.12.
- [`TFLint`](https://github.com/terraform-linters/tflint) required for `terraform_tflint` hook.
- [`TFSec`](https://github.com/liamg/tfsec) required for `terraform_tfsec` hook.
- [`coreutils`](https://formulae.brew.sh/formula/coreutils) required for `terraform_validate` hook on macOS (due to use of `realpath`).
- [`checkov`](https://github.com/bridgecrewio/checkov) required for `checkov` hook.

#### MacOS

```bash
brew tap liamg/tfsec
brew install pre-commit gawk terraform-docs tflint tfsec coreutils

brew tap bridgecrewio/checkov https://github.com/bridgecrewio/checkov
brew update
brew install checkov
```

#### Ubuntu

```bash
sudo apt install python3-pip gawk &&\
pip3 install pre-commit
curl -L "$(curl -s https://api.github.com/repos/segmentio/terraform-docs/releases/latest | grep -o -E "https://.+?-linux-amd64")" > terraform-docs && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
env GO111MODULE=on go get -u github.com/liamg/tfsec/cmd/tfsec
pip3 install checkov
```

### 2. Install the pre-commit hook globally

```bash
DIR=~/.git-template
git config --global init.templateDir ${DIR}
pre-commit init-templatedir -t pre-commit ${DIR}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| null | ~> 2.1 |

## Providers

| Name | Version |
|------|---------|
| null | ~> 2.1 |

## Inputs

No input.

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
