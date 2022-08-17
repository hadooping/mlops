# latest version of python
FROM python:3.9.13

# working directory
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the requirements
RUN pip install -r requirements.txt

# Copy the app to the container
COPY src/ .

# Expose port 8080  
EXPOSE 8080

# Run the app
CMD ["python3", "app.py", "serve"]
