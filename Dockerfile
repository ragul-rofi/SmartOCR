FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    tesseract-ocr \
    poppler-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 5000

# Run the app
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
