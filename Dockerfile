FROM nixpkgs/nix-flakes:latest

RUN nix-channel --add https://nixos.org/channels/nixos-unstable nixpkgs
RUN nix-channel --update
RUN nix-env -iA nixpkgs.direnv

RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
RUN echo 'alias direnv-allow="direnv allow . && eval \"\$(direnv export bash)\""' >> ~/.bashrc
