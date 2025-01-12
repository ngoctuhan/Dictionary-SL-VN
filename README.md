# Vietnamese Sign Language Dictionary

A Vietnamese Sign Language Classification system using I3D (Inflated 3D ConvNet) architecture with action detection capabilities.

## Demo
[Watch the demonstration video](https://www.youtube.com/watch?v=9TyuBKhD2sc)

## Overview

This project implements a sign language classification system with the following key features:
- Classification of 50 Vietnamese sign language gestures using I3D architecture
- Real-time action detection to identify start/stop sequences using a CNN-based submodel
- Web-based user interface built with Flask
- Docker support for easy deployment

## Architecture

### Main Components

1. **I3D Model**
   - Handles the main classification task for 50 sign language classes
   - Based on the Inflated 3D ConvNet architecture
   - Pre-trained on Kinetics dataset and fine-tuned for sign language

2. **Action Detection Submodel**
   - CNN-based architecture for detecting start/stop actions
   - Enables accurate sequence segmentation for classification
   - Real-time processing capabilities

3. **Web Interface**
   - Flask-based frontend for user interaction
   - Real-time video capture and processing
   - Results visualization and display

## Installation

### Option 1: Using requirements.txt

```bash
# Clone the repository
git clone https://github.com/yourusername/Dictionary-SL-VN.git
cd Dictionary-SL-VN

# Create and activate virtual environment (optional but recommended)
python -m venv venv
source venv/bin/activate  # For Linux/Mac
# or
.\venv\Scripts\activate  # For Windows

# Install dependencies
pip install -r requirements.txt
```

### Option 2: Using Docker

```bash
# Clone the repository
git clone https://github.com/yourusername/Dictionary-SL-VN.git
cd Dictionary-SL-VN

# Build and run using docker-compose
docker-compose up --build
```

## Usage

1. Start the Flask server:
```bash
python app.py
```

2. Open your web browser and navigate to:
```
http://localhost:5000
```

3. Allow camera access when prompted

4. Perform sign language gestures within the camera frame

5. The system will:
   - Detect when you start and stop signing
   - Process the sequence using the I3D model
   - Display the predicted sign language class

## Model Details

### I3D Architecture
- Input: Video sequences of sign language gestures
- Output: 50-class classification
- Architecture: Inflated 3D ConvNet with pretrained weights
- Training data: [Specify your dataset details]

### Action Detection Submodel
- Purpose: Sequence segmentation
- Input: Real-time video frames
- Output: Binary classification (signing/not signing)
- Architecture: CNN-based design optimized for real-time processing

## Project Structure

```
Dictionary-SL-VN/
├── app.py              # Flask application
├── models/
│   ├── i3d/           # I3D model files
│   └── action_detect/ # Action detection model
├── static/            # Static files for web interface
├── templates/         # HTML templates
├── utils/            # Utility functions
├── requirements.txt  # Python dependencies
└── docker-compose.yml
```

## Requirements

- Python 3.8+
- CUDA-compatible GPU (recommended)
- Webcam for real-time detection

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

[Specify your license]

## Acknowledgments

- I3D implementation based on [reference paper/repository]
- [Any other acknowledgments]

## Contact

[Your contact information or how to reach out for questions]
