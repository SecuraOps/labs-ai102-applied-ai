## Step 2 – Provision Azure AI Services (Terraform Module)

In this step, you will use the **`ai_basics` Terraform module** to create:

- Resource Group
- Azure Cognitive Services account

### Commands:

1. Initialize Terraform

```bash
cd terraform
terraform init
```

2. Plan and Apply

```bash
terraform plan
terraform apply
```

3. Terraform outputs will include:
- Resource Group name
- Cognitive Services account name
- Endpoint
- API Key
