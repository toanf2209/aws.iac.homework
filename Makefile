TARGET_ENV:=lab
VAR_FILE:=./env/$(TARGET_ENV).tfvars


init:
	terraform init

plan:
	terraform plan -var-file=$(VAR_FILE)

apply:
	terraform apply -var-file=$(VAR_FILE)

destroy:
	terraform destroy -var-file=$(VAR_FILE)