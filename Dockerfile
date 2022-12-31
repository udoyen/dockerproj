FROM python:3.7.3-stretch
# working directory
WORKDIR /app

# Copy source ocode to working directory
COPY . app.py /app/

# Install packaged from requirements.txt
# hadolint ingore=DL3013
RUN pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt
