{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
};

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.cat = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
      ./configuration.nix
      ];
    };
  };
}
