group "default" {
  targets = ["base"]
}

target "base" {
  context    = "."
  dockerfile = "Dockerfile"
  
  tags = [
    "yoniash/base:1.1.0",
    "yoniash/base:latest"
  ]

  # Build-time arguments (Uncomment and modify as needed)
  # args = {
  #   NODE_ENV = "production"
  #   APP_PORT = "8080"
  # }

  # Environment variables (used at runtime, but can be defined here for reference)
  # env = {
  #   BUILD_ENV = "production"
  #   APP_VERSION = "1.0.0"
  # }

  # Labels for the built image
  # labels = {
  #   "com.example.description" = "My custom image"
  #   "com.example.version" = "1.0.0"
  # }

  # Platforms for multi-arch builds (uncomment if using cross-platform builds)
  platforms = ["linux/amd64", "linux/arm64"]
}
