.PHONY: fmt init validate plan apply destroy

TF_DIR=terraform/environments/dev

fmt:
	terraform fmt -recursive

init:
	terraform -chdir=$(TF_DIR) init

validate:
	terraform -chdir=$(TF_DIR) validate

plan:
	terraform -chdir=$(TF_DIR) plan

apply:
	terraform -chdir=$(TF_DIR) apply

destroy:
	terraform -chdir=$(TF_DIR) destroy
