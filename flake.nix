{
  description = "L3af's personal NixOS configuration.";

  inputs = {
    home = {
      url = "github:l3afme/home-manager";
      inputs.nixpkgs.follows = "unstable";
    };

    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    rust.url = "github:oxalica/rust-overlay";

    master.url = "/home/l3af/Projects/Nix/nixpkgs/";
    stable.url = "github:nixos/nixpkgs/release-20.09";
    staging.url = "github:nixos/nixpkgs/staging";
    staging-next.url = "github:nixos/nixpkgs/staging-next";
    unstable.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs.follows = "master";
  };

  outputs = { self, home, nixpkgs, ... } @ inputs:
    with nixpkgs.lib;
    {
      # nixosConfigurations.l3af = import ./immutable {
      #   inherit home inputs nixpkgs;
      # };

      test = "test";

      # l3af = self.nixosConfigurations.l3af.config.system.build.toplevel;
    };
}
