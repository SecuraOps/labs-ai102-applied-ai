import requests
import os

endpoint = os.environ.get("AZURE_AI_ENDPOINT")
api_key = os.environ.get("AZURE_AI_KEY")

headers = {
    "Ocp-Apim-Subscription-Key": api_key,
    "Content-Type": "application/json"
}

payload = {
    "documents": [
        {"id": "1", "language": "en", "text": "Azure AI services are powerful."}
    ]
}

response = requests.post(
    f"{endpoint}/text/analytics/v3.2/sentiment",
    headers=headers,
    json=payload
)

print(response.json())
