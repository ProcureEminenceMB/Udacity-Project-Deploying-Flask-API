# Set source image
FROM python:stretch

# Copy current directory contents to the app directory
COPY . /app
WORKDIR /app

# Automate pip and required python package installation
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Specify the entrypoint for the Gunicorn WSGI server
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]