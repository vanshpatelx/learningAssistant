# Teaching Assistant - Your Instant Personal Assistant for Uploaded Books

Welcome to Teaching Assistant, a powerful tool that transforms your uploaded books into an instant personal assistant. The application utilizes Google Generative AI Embeddings, FAISS for vector database storage, and the Gemini-Pro model. Text splitting is achieved through the Recursive Character Text Splitter.

## Project Overview

Teaching Assistant is designed to provide instant assistance based on the content of uploaded books. The integration of advanced technologies allows for efficient text processing and retrieval.

### Project Architecture

![Project Architecture](https://github.com/vanshpatelx/learningAssistant/raw/main/images/architecture.png)


## How it Works

1. **Google Generative AI Embeddings**: The application leverages Google Generative AI Embeddings for processing the text data extracted from uploaded books.

2. **Vector Database (FAISS)**: FAISS is used to efficiently store and retrieve embeddings, enhancing the overall performance of the personal assistant.

3. **Model**: Gemini-Pro, a sophisticated model, is employed for in-depth analysis and understanding of the book content.

## Getting Started

### Prerequisites
Ensure you have Docker installed on your machine.

# Two Ways to Install
## 1. Using Pre-built Docker Image from Docker Hub:
### Pull the Docker Image
```console
docker pull vanshpatel/teaching_assistant:1.0.0
```

### Run the Docker Container
```console
docker run -p 8501:8501 --env-file .env vanshpatel/teaching-assistant:1.0.0
```
Access the Teaching Assistant in your web browser at http://localhost:8501.


## 2. Clone Repository, Build, and Run:
### Clone the Repository
```console
git clone https://github.com/vanshpatelx/learningAssistant
```

### Navigate to the Project Directory
```console
cd learningAssistant
```

### Build the Docker Image
```console
docker build -t teaching-assistant .
```

### Run the Docker Container
```console
docker run -p 8501:8501 --env-file .env teaching-assistant
```

Access the Teaching Assistant in your web browser at http://localhost:8501.