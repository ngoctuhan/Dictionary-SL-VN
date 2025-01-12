FROM python:3.7
# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*
    
RUN mkdir /app

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "flask_app.py"]
