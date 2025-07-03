### 1.Prerequisites
- Terraform ≥ 1.7 – brew install terraform or see https://developer.hashicorp.com/terraform/downloads

- AWS CLI ≥ 2 – and an IAM user/role with privileges to create EC2, S3, IAM.

- Key Pair in the target AWS account for SSH.

- Configure credentials in `env/lab.tfvars` --> `aws_profile`

### 2. Variable Configuration At `env`
- Create a `.tfvars` file in the env folder
    - Example `./env/lab.tfvars`
- Enter the newly created value into `TARGET_ENV` in `Makefile`

### 3. Deployment Command:
- **Step 1:** Provider initialization
    - init: `make init `
- **Step 2:** Plan implementation
    - plan: `make plan `
- **Step 3:** Infrastructure Deployment
    - apply: `make apply `
- **Step 4:** Destroy infrastructure
    - destroy: `make destroy `

### 4.Result
- Access application
    - `Public IP` = [18.139.110.218](http://18.139.110.218/)

