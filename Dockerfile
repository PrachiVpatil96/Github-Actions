# Use official Python image
FROM python:alpine

# Set working directory inside container
WORKDIR /app

# Copy requirements file first
COPY requirements.txt .

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy application code
COPY . .

# Expose port
EXPOSE 8000

# Run FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]