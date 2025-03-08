FROM yoniash/venv:3.12

USER root
# Set environment variables
ENV PYTHONUNBUFFERED 1

# Install system dependencies for Jupyter Notebook
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Jupyter Notebook
RUN pip install --upgrade pip
RUN pip install jupyter

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start SSH in the background and default to a shell
USER $USER
CMD ["bash", "-c", "source install-dependencies && jupyter notebook --ip='*' --port=8888 --no-browser"]
