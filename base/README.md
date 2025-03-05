# BASE docker image

A light weight base image bundled with minimal python installation, some common packages (git, zsh, sudo ...).

> Note: this project is specially useful when you want a pre-configured non-root user (bypassing those `--allow-root`, `--ignore-root`, `--sandbox` ... extra parameters).

## Features
- It has its main user `appuser` mounted at `/home/appuser`.
- Default working directory is `app`
- `appuser` is a `sudoer` (can execute `sudo`)