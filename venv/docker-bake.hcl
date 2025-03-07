group "default" {
  targets = ["venv", "venv-ssh", "jupyter"]
}

target "venv" {
  context    = "."
  dockerfile = "dockerfile"
  
  tags = [
    "yoniash/venv:3.12",
    "yoniash/venv:latest"
  ]

  platforms = ["linux/amd64", "linux/arm64"]
}

target "venv-ssh" {
  context    = "."
  dockerfile = "ssh.dockerfile"
  
  tags = [
    "yoniash/venv-ssh:3.12",
    "yoniash/venv-ssh:latest"
  ]

  platforms = ["linux/amd64", "linux/arm64"]
}

target "jupyter" {
  context    = "."
  dockerfile = "jupyter.dockerfile"
  
  tags = [
    "yoniash/jupyter:3.12",
    "yoniash/jupyter:latest"
  ]

  platforms = ["linux/amd64", "linux/arm64"]
}
