# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

###############################################################
# Cognitive Services Account `kind` options. Specifies the type of Cognitive Service Account that should be created.
#|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
#| `kind`                                             | Description / Use Case                                                                                                                                                         |
#| -------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
#| `Academic`                                         | Special-purpose Cognitive Services account for academic/research scenarios.                                                                                                    |
#| `AIServices`                                       | General-purpose AI Services account (umbrella account for multiple AI capabilities).                                                                                           |
#| `AnomalyDetector`                                  | Detect anomalies in time-series data. Ideal for monitoring, IoT, or predictive maintenance.                                                                                    |
#| `Bing.Autosuggest`, `Bing.Autosuggest.v7`          | Provides search query auto-suggestions. Useful for search UX and intelligent typing assistance.                                                                                |
#| `Bing.CustomSearch`                                | Enables custom Bing search experiences, allowing tailored search results.                                                                                                      |
#| `Bing.Search`, `Bing.Search.v7`                    | General Bing Search API for web, image, video, news, etc.                                                                                                                      |
#| `Bing.Speech`                                      | Speech-to-text, text-to-speech, and speech translation (legacy).                                                                                                               |
#| `Bing.SpellCheck`, `Bing.SpellCheck.v7`            | Spell checking and autocorrect services for text input.                                                                                                                        |
#| `CognitiveServices`                                | **All-in-one general-purpose account**. Supports multiple cognitive services including Text, Vision, Speech, Decision, OpenAI. Best for labs or multi-service experimentation. |
#| `ComputerVision`                                   | Computer Vision API (image analysis, object detection, OCR, spatial analysis).                                                                                                 |
#| `ContentModerator`                                 | Moderates text, images, and videos for offensive or unwanted content.                                                                                                          |
#| `ContentSafety`                                    | Ensures content safety using AI moderation (newer API than ContentModerator).                                                                                                  |
#| `CustomSpeech`                                     | Custom Speech model training and deployment.                                                                                                                                   |
#| `CustomVision.Prediction`, `CustomVision.Training` | Custom Vision API for training and predicting image classification or object detection.                                                                                        |
#| `Emotion`                                          | Detects emotions in images/faces. (Legacy, being deprecated in favor of Face API).                                                                                             |
#| `Face`                                             | Face detection, verification, identification, and facial attributes.                                                                                                           |
#| `FormRecognizer`                                   | Extract structured data from forms, PDFs, receipts, or invoices.                                                                                                               |
#| `ImmersiveReader`                                  | Enhances text readability and accessibility for users (e.g., read-aloud, translations).                                                                                        |
#| `LUIS`                                             | Language Understanding service (NLP, intent recognition).                                                                                                                      |
#| `LUIS.Authoring`                                   | Authoring of LUIS models; used when managing intents and entities programmatically.                                                                                            |
#| `MetricsAdvisor`                                   | Monitors metrics, detects anomalies, and sets alerts in real-time datasets.                                                                                                    |
#| `OpenAI`                                           | Azure OpenAI Service (GPT, embeddings, other LLMs). Use this kind for AI-102 labs involving ChatGPT, embeddings, or Azure OpenAI playground.                                   |
#| `Personalizer`                                     | AI service to deliver personalized content or recommendations to users.                                                                                                        |
#| `QnAMaker`                                         | Build knowledge-base question-answering bots.                                                                                                                                  |
#| `Recommendations`                                  | Product/service recommendation engine using machine learning.                                                                                                                  |
#| `SpeakerRecognition`                               | Voice biometrics for speaker identification and verification.                                                                                                                  |
#| `Speech`                                           | Speech APIs (STT, TTS) for real-time or batch processing.                                                                                                                      |
#| `SpeechServices`                                   | Unified speech service (newer, supports multiple speech capabilities).                                                                                                         |
#| `SpeechTranslation`                                | Real-time speech translation service.                                                                                                                                          |
#| `TextAnalytics`                                    | Natural language processing: sentiment analysis, key phrases, entities, language detection.                                                                                    |
#| `TextTranslation`                                  | Translate text between languages.                                                                                                                                              |
#| `WebLM`                                            | Web-based language model (less commonly used, usually for research).                                                                                                           |


# Cognitive Services Account
resource "azurerm_cognitive_account" "cognitive" {
  name                = var.cognitive_account_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "CognitiveServices"
  sku_name            = "S0"
  tags                = var.tags
}
