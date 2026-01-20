## Step 4 – Validation

Confirm the lab is successful by:

1. Checking Terraform outputs:

```bash
terraform output
```

2. Using the Python script to call the Cognitive Services endpoint:

```bash
python ../code/python/text_analysis.py
```

3. Optionally, open Azure AI Studio and check that the resource appears in your subscription.
4. Clean up the resources when done:

```bash
terraform destroy
```
> Startup Note: This avoids unexpected costs.
>
> Enterprise Note: Managed identities or RBAC can be added in future labs.
