# Use a lightweight Python image
FROM python:3.9-slim
# Set the working directory inside the container
WORKDIR /app
# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application
COPY . .
# Expose port 8000 for FastAPI
EXPOSE 8000
# Run FastAPI using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]