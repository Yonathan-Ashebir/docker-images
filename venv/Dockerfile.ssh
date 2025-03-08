FROM yoniash/venv:3.12

# Install OpenSSH server
USER root
RUN apt-get update && apt-get install -y openssh-server && \
    mkdir /var/run/sshd

# Set password for appuser
RUN echo 'appuser:appuser' | chpasswd

# Allow password authentication in SSH
RUN sed -i 's/#PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    echo "AllowUsers appuser" >> /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22

# Start SSH in the background and default to a shell
USER $USER
CMD ["bash", "-c", "sudo /usr/sbin/sshd && setup-venv"]
