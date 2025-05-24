# Use the official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy app code
COPY . .

# Expose the port Flask uses
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
