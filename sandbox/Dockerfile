FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    weston \
    xwayland \
    && rm -rf /var/lib/apt/lists/*

# Set the environment variables
ENV DISPLAY=:0
ENV WAYLAND_DISPLAY=wayland-0
ENV XDG_RUNTIME_DIR=/run/user/1000

# Run the application
CMD ["weston"]