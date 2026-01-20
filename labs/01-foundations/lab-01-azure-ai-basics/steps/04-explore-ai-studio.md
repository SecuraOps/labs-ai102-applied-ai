## Step 4 – Explore Azure AI Studio (Optional – Browser)

In this optional section, you will explore **Azure AI Studio / Foundry portal** to create a project
and interact with models via the web interface.  
This extends your understanding of Azure AI beyond REST/SDK calls.

### 1. Open Azure AI Studio
- In your browser, go to: **https://ai.azure.com**
- Sign in using your Azure credentials.

### 2. Create a Foundry Project
- In the **Explore models and capabilities** section search for **gpt-4o**.
- Select the model in results, then choose **Use this model**.
- When prompted, create a **new AI project**:
  - Enter a valid project name.
  - Expand **Advanced options**.
  - Use a Foundry resource (or create one) with a valid Subscription and Resource Group. :contentReference[oaicite:2]{index=2}

### 3. Configure the Model
- Deploy the model using the **Global standard** deployment type.
- Optionally set the **Tokens Per Minute (TPM)** rate limit, e.g., 50,000, to avoid quota over-usage. :contentReference[oaicite:3]{index=3}

### 4. Explore the Playground
- When the project opens, use the **Chat playground**.
- Test the deployed model:
  - Try a prompt like: `Explain the purpose of Azure AI Studio in one sentence.`
- Navigate to the **Overview > Endpoints and keys** section to review the
  endpoints & keys for programmatic access. :contentReference[oaicite:4]{index=4}

### 5. What You Should Learn
- How to navigate Azure AI Studio
- How to deploy & test a model via **web UI**
- How to view **endpoints & keys**
- How browser interaction complements API calls
