# Use Python 3.12 as the base image
FROM python:3.12-slim

# Create basic apt packages
RUN apt update && apt install -y sudo zsh git

# Install Zsh plugins
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/zsh-autosuggestions && \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting /usr/share/zsh-syntax-highlighting && \
    chsh -s $(which zsh) $USER  # Set Zsh as the default shell for the user

# Set up root
COPY src/.zshrc /root/.zshrc

# Set up non root user
ENV HOME=/home/appuser
ENV USER=appuser

RUN useradd -m -d $HOME -s /bin/zsh $USER && \
    echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    mkdir -p "$HOME/.local/bin/" && \
    chown -R $USER:$USER $HOME

COPY --chown=$USER:$USER src/.zshrc "$HOME/.zshrc"

# Setup starting enviroment
# USER $USER
# RUN mkdir "$HOME/app"
# WORKDIR "$HOME/app"
# USER root

WORKDIR "/app"
RUN chown $USER:$USER /app

USER $USER
ENV PATH="$HOME/.local/bin:$PATH"
CMD ["zsh"]

# RUN bash -c 'ls $HOME -l && exit 1'