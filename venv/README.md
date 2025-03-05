# VENV docker image

Docker image for quickly setting up sandbox with python virtual environment for your projects via
```bash
    docker run --rm -it -v "$(pwd)":/app -w /app yoniash/venv:3.12 
    # Note: --rm will dispose of the container on termination
```

> Note this project is mainly intended for those cases where you need separation of project virtual environment from the container's. And also when you want a pre-configured non-root user (bypassing those `--allow-root`, `--ignore-root`, `--sandbox` ... extra parameters).

## Features
- The image is built on top of `yoniash/base`. Thus, it inherits the nice properties such as having an already configured non-root user and having bundle of popular small utilities
- Currently, the image supports poetry and pip (`pip -r requirements.txt`). The default behavior is it first checks for `.venv` in current working directory, creating one if not found. Then checks for `pypoetry.toml`, falling back to `requrements.txt`. Otherwise it only activates the virtual environment. Then it entires to shell.
