# Use Python 3.12 as the base image
FROM yoniash/base:1.0.0

# Install python tools
USER root
RUN pip install poetry ipython

USER $USER
COPY --chown=$USER:$USER src/install-dependencies "$HOME/.local/bin/install-dependencies"
RUN chmod +x "$HOME/.local/bin/install-dependencies"

COPY --chown=$USER:$USER src/setup-venv "$HOME/.local/bin/setup-venv"
RUN chmod +x "$HOME/.local/bin/setup-venv"

# Default command
CMD ["setup-venv"]

# RUN bash -c 'ls $HOME -l && exit 1'