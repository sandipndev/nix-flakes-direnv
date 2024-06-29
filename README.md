# Nix Flakes with Direnv Docker Image

## Overview
This Docker image combines the power of Nix Flakes with Direnv to create a robust, reproducible development environment. You bring in your `flake.nix` and `.envrc` and we power up the dependencies for you.

## Key Features
- **Nix Flakes**: deterministic reproducible builds
- **Direnv**: best development environment with powerful hooks into nix-shell

## Getting Started

### Prerequisites
- Docker: Ensure Docker is installed and running on your system. For installation instructions, visit [Docker's official documentation](https://docs.docker.com/get-docker/).

### Using the Image
To start a container with your custom development environment:
```bash
docker run -it --rm sandipndev/nix-flakes-direnv:latest
```
This command starts a container in interactive mode and removes it after use. You will be dropped into a shell where Nix Flakes and Direnv are pre-configured.

## Configuration
- **Direnv Configuration**: The `.envrc` file in the working directory needs to be configured. Typically it will contain the line `use flake`.
- **Adding Nix Packages**: Modify the `flake.nix` file to include additional packages or dependencies required for your projects.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your improvements or suggestions. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
