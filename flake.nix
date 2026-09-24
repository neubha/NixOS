{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.NixOS = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./configuration.nix
      ];
    };

    packages.x86_64-linux = {
      hello = nixpkgs.legacyPackages.x86_64-linux.hello;
      default = self.packages.x86_64-linux.hello;
    };
  };  

}
