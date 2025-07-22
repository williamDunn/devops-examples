# DevOps Examples

This repository contains infrastructure-as-code and automation examples, starting with Terraform configurations. The goal is to build a reference library of DevOps tooling and practices as the repo evolves.

---

## 📦 Current Contents

### Terraform
Located in: `terraform/`

- `providers.tf` – provider configuration (e.g., AWS, local)
- `main.tf` – example infrastructure resources
- `.gitignore` – excludes `.terraform/`, state files, and secrets from version control

To initialize:
```bash
cd terraform/
terraform init
terraform plan


🚧 Coming Soon

Planned additions:

    ✅ Jenkins pipelines (Jenkinsfile)

    ✅ Dockerfiles and CI/CD demos

    ✅ Kubernetes manifests

    ✅ Bash scripts & provisioning logic
